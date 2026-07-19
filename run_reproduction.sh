#!/usr/bin/env bash
# Reproduce the review findings.
#
# Part A (self-contained): runs the three probes against the shipped
#   ground-truth reconstruction (data/runs.jsonl). No external package needed
#   beyond Python 3.8+ and optionally scipy for confidence intervals.
#
# Part B (optional): if you have the authors' original code package
#   (agent-behavioral-detection), point ABD_REPO at it to regenerate the
#   0.151 / 0.968 pair with their calibrated ensemble.
set -euo pipefail
cd "$(dirname "$0")"

echo "########## PART A — self-contained probes ##########"
for p in probes/probe_circularity.py probes/probe_baseline_identity.py probes/probe_reproduce.py; do
  echo
  python3 "$p" --runs data/runs.jsonl
done

echo
echo "########## PART B — authors' calibrated ensemble (optional) ##########"
if [[ -n "${ABD_REPO:-}" && -f "${ABD_REPO}/scripts/run_agentdojo.py" ]]; then
  echo "Using ABD_REPO=${ABD_REPO}"
  ( cd "${ABD_REPO}" && python3 scripts/run_agentdojo.py --runs runs.jsonl )
else
  echo "Set ABD_REPO to the authors' package to regenerate 0.151 / 0.968:"
  echo "    ABD_REPO=/path/to/agent-behavioral-detection bash run_reproduction.sh"
fi
