import json
import tempfile
import unittest
from pathlib import Path

from tools.validate_records import validate_record, validate_repository


def mechanic(**updates):
    record = {
        "type": "mechanic", "version": 1, "id": "test-feedback-loop",
        "name": "Test feedback loop", "status": "PROVISIONAL",
        "summary": "A bounded example.", "player_action": "Act.",
        "system_response": "Respond.", "encouraged_behavior": ["repeat"],
        "experience_targets": ["clarity"], "requirements": [],
        "relationships": {"strengthens": [], "weakened_by": [], "conflicts_with": []},
        "failure_modes": ["Unreadable response."],
        "production": {"implementation_cost": "LOW", "content_cost": "LOW", "tuning_cost": "MEDIUM", "required_disciplines": ["design"]},
        "accessibility": ["Provide redundant feedback."],
        "smallest_playable_test": {"setup": "One action.", "measure": ["recognition"], "retain_if": "Recognized.", "revise_if": "Delayed.", "reject_if": "Ignored."},
        "evidence": [], "updated": "2026-08-11"
    }
    record.update(updates)
    return record


class ValidationTests(unittest.TestCase):
    def test_valid_provisional_mechanic(self):
        self.assertEqual(validate_record(mechanic(), Path("record.json")), [])

    def test_rejects_undeclared_field(self):
        errors = validate_record(mechanic(approval="GRANTED"), Path("record.json"))
        self.assertTrue(any("undeclared fields" in error for error in errors))

    def test_observed_mechanic_requires_evidence(self):
        errors = validate_record(mechanic(status="OBSERVED"), Path("record.json"))
        self.assertTrue(any("requires evidence" in error for error in errors))

    def test_duplicate_ids_fail_repository(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            target = root / "mechanics"
            target.mkdir()
            (target / "a.json").write_text(json.dumps(mechanic()), encoding="utf-8")
            (target / "b.json").write_text(json.dumps(mechanic()), encoding="utf-8")
            errors = validate_repository(root)
            self.assertTrue(any("duplicate id" in error for error in errors))


if __name__ == "__main__":
    unittest.main()
