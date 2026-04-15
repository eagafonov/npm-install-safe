#!/bin/sh
# npm-install-safe.sh — Only install npm packages released at least 7 days ago
set -eu

QUARANTINE_DAYS="${QUARANTINE_DAYS:-7}"
BEFORE_DATE="$(date -d "${QUARANTINE_DAYS} days ago" --iso-8601)"

echo "🔒 Safe install: only allowing packages published before ${BEFORE_DATE} (${QUARANTINE_DAYS}-day quarantine)"

set +x
npm install --before="${BEFORE_DATE}" "$@"
