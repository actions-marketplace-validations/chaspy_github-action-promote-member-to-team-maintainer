#!/bin/bash
set -eu
set -o pipefail

gh api \
  --method PUT \
  -H "Accept: application/vnd.github.v3+json" \
  "/orgs/${ORG}/teams/${TEAM}/memberships/${USER}" \
  -f role='maintainer'
