#!/usr/bin/env python3
"""Search structured game-knowledge records using plain text terms."""
from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any

try:
    from .validate_records import ROOT, record_paths
except ImportError:  # Direct script execution.
    from validate_records import ROOT, record_paths


def flattened_strings(value: Any):
    if isinstance(value, str):
        yield value
    elif isinstance(value, dict):
        for key, item in value.items():
            yield key
            yield from flattened_strings(item)
    elif isinstance(value, list):
        for item in value:
            yield from flattened_strings(item)


def search_records(terms: list[str], status: str | None = None, root: Path = ROOT):
    wanted = [term.casefold() for term in terms]
    results = []
    for path in record_paths(root):
        data = json.loads(path.read_text(encoding="utf-8"))
        if status and data.get("status") != status:
            continue
        haystack = "\n".join(flattened_strings(data)).casefold()
        if all(term in haystack for term in wanted):
            results.append((path, data))
    return results


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("terms", nargs="+", help="terms that must all occur in a record")
    parser.add_argument("--status", help="optional exact evidence state")
    args = parser.parse_args()
    results = search_records(args.terms, args.status)
    for path, data in results:
        summary = data.get("summary") or data.get("effect") or "; ".join(data.get("scope", []))
        print(f"{data['id']} [{data['type']}/{data.get('status', 'N/A')}]")
        print(f"  {path.relative_to(ROOT)}")
        print(f"  {summary}")
    print(f"{len(results)} record(s) matched.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
