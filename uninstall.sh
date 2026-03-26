#!/usr/bin/env bash
# uninstall.sh - Uninstall Co4Pilot skills and agents
# Convenience wrapper around install.sh --uninstall

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
bash "$SCRIPT_DIR/install.sh" --uninstall
