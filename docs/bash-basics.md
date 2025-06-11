# Bash Basics – disk_alert.sh

This script monitors disk usage and writes a log entry if it crosses a threshold.

## ✅ Key Concepts Used

- `#!/bin/bash` – shebang to define script interpreter
- `df /` – checks disk usage of root directory
- `awk` – extracts percentage usage
- `tr -d '%'` – removes percentage symbol
- `if [ "$USAGE" -ge "$THRESHOLD" ]` – compares disk usage
- `$(date)` – captures current timestamp
- `echo "$MESSAGE"` – outputs status line
- `tee -a` – appends log entry to file with elevated permission

## 🧠 Learning Outcome

This script shows how basic Bash tools can automate real-world server monitoring.
