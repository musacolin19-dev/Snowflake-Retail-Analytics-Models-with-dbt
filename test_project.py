import unittest
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
class TestDbtProject(unittest.TestCase):
    def test_model_references(self):
        self.assertIn("ref('stg_orders')",(ROOT/'models/marts/daily_revenue.sql').read_text())
        self.assertIn('not_null',(ROOT/'models/schema.yml').read_text())
