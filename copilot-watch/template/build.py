#!/usr/bin/env python3
"""Fill daily.html with a day's report JSON.

Usage: python3 copilot-watch/template/build.py <data.json> <out.html>
"""
import json
import pathlib
import sys

here = pathlib.Path(__file__).resolve().parent
data = json.loads(pathlib.Path(sys.argv[1]).read_text(encoding="utf-8"))
for key in ("date", "counts", "topics"):
    if key not in data:
        sys.exit(f"missing key: {key}")
payload = json.dumps(data, ensure_ascii=False).replace("<", "\\u003c")
template = (here / "daily.html").read_text(encoding="utf-8")
if template.count("__REPORT_DATA__") != 1:
    sys.exit("template placeholder not found exactly once")
out = pathlib.Path(sys.argv[2])
out.parent.mkdir(parents=True, exist_ok=True)
out.write_text(template.replace("__REPORT_DATA__", payload), encoding="utf-8")
print(f"wrote {out} ({len(data['topics'])} topics)")
