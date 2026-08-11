#!/usr/bin/env python3
"""Validate repository JSON records without third-party dependencies."""
from __future__ import annotations

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
RECORD_DIRS = ("mechanics", "games", "interactions", "playtests", "creation")
KINDS = {"mechanic", "game-analysis", "interaction", "playtest"}
STATES = {"PROVISIONAL", "OBSERVED", "REPRODUCED", "RETAINED", "REJECTED"}
ID_RE = re.compile(r"^[a-z0-9]+(?:-[a-z0-9]+)*$")
REQUIRED = {
    "mechanic": {"type", "version", "id", "name", "status", "summary", "player_action", "system_response", "encouraged_behavior", "experience_targets", "requirements", "relationships", "failure_modes", "production", "accessibility", "smallest_playable_test", "evidence", "updated"},
    "game-analysis": {"type", "version", "id", "game", "build", "platform", "status", "scope", "observations", "inferences", "mechanic_ids", "sources", "updated"},
    "interaction": {"type", "version", "id", "status", "source_ids", "target_ids", "relationship", "conditions", "effect", "failure_boundary", "evidence", "updated"},
    "playtest": {"type", "version", "id", "build_id", "date", "tester_context", "test_goal", "conditions", "events", "outcomes", "interpretations", "decision"},
}
OPTIONAL = {
    "mechanic": {"supersedes", "notes"},
    "game-analysis": {"limits", "supersedes"},
    "interaction": {"supersedes"},
    "playtest": {"next_test", "evidence_paths"},
}


def record_paths(root: Path = ROOT) -> list[Path]:
    paths: list[Path] = []
    for dirname in RECORD_DIRS:
        directory = root / dirname
        if directory.exists():
            paths.extend(directory.rglob("*.json"))
    return sorted(paths)


def validate_record(data: object, path: Path) -> list[str]:
    if not isinstance(data, dict):
        return [f"{path}: record must be a JSON object"]
    kind = data.get("type")
    if kind not in KINDS:
        return [f"{path}: unknown record type {kind!r}"]
    errors: list[str] = []
    missing = REQUIRED[kind] - data.keys()
    extra = data.keys() - REQUIRED[kind] - OPTIONAL[kind]
    if missing:
        errors.append(f"{path}: missing fields: {', '.join(sorted(missing))}")
    if extra:
        errors.append(f"{path}: undeclared fields: {', '.join(sorted(extra))}")
    record_id = data.get("id")
    if not isinstance(record_id, str) or not ID_RE.fullmatch(record_id):
        errors.append(f"{path}: id must use lowercase kebab-case")
    if data.get("version") != 1:
        errors.append(f"{path}: version must equal 1")
    if "status" in data and data["status"] not in STATES:
        errors.append(f"{path}: invalid evidence state {data['status']!r}")
    if kind == "mechanic" and data.get("status") in STATES - {"PROVISIONAL"} and not data.get("evidence"):
        errors.append(f"{path}: non-provisional mechanic requires evidence")
    return errors


def validate_repository(root: Path = ROOT) -> list[str]:
    errors: list[str] = []
    seen: dict[str, Path] = {}
    loaded: list[tuple[Path, dict]] = []
    for path in record_paths(root):
        try:
            data = json.loads(path.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError) as exc:
            errors.append(f"{path}: cannot load JSON: {exc}")
            continue
        errors.extend(validate_record(data, path))
        if isinstance(data, dict) and isinstance(data.get("id"), str):
            loaded.append((path, data))
            record_id = data["id"]
            if record_id in seen:
                errors.append(f"{path}: duplicate id {record_id!r}; first seen in {seen[record_id]}")
            else:
                seen[record_id] = path
    for path, data in loaded:
        references: list[str] = []
        if data.get("type") == "game-analysis":
            references.extend(data.get("mechanic_ids", []))
        elif data.get("type") == "interaction":
            references.extend(data.get("source_ids", []))
            references.extend(data.get("target_ids", []))
        for reference in references:
            if reference not in seen:
                errors.append(f"{path}: unresolved local record reference {reference!r}")
    return errors


def main() -> int:
    errors = validate_repository()
    if errors:
        print("Record validation failed:")
        for error in errors:
            print(f"- {error}")
        return 1
    count = len(record_paths())
    print(f"Record validation passed: {count} JSON record(s).")
    return 0


if __name__ == "__main__":
    sys.exit(main())
