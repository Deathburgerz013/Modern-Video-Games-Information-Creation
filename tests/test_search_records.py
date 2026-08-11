import json
import tempfile
import unittest
from pathlib import Path

from tools.search_records import search_records


class SearchTests(unittest.TestCase):
    def test_requires_all_terms(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            target = root / "mechanics"
            target.mkdir()
            records = [
                {"id": "camera-motion", "type": "mechanic", "status": "OBSERVED", "summary": "camera movement response"},
                {"id": "camera-color", "type": "mechanic", "status": "PROVISIONAL", "summary": "camera color grading"}
            ]
            for index, record in enumerate(records):
                (target / f"{index}.json").write_text(json.dumps(record), encoding="utf-8")
            results = search_records(["camera", "movement"], root=root)
            self.assertEqual([data["id"] for _, data in results], ["camera-motion"])

    def test_filters_status(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            target = root / "mechanics"
            target.mkdir()
            for status in ("OBSERVED", "PROVISIONAL"):
                record = {"id": status.lower(), "type": "mechanic", "status": status, "summary": "dash input"}
                (target / f"{status}.json").write_text(json.dumps(record), encoding="utf-8")
            results = search_records(["dash"], status="OBSERVED", root=root)
            self.assertEqual([data["status"] for _, data in results], ["OBSERVED"])


if __name__ == "__main__":
    unittest.main()
