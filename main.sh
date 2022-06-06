#!/bin/bash
set -eu
set -o pipefail

USER=$1
TEAM=$2
ORG=$3

gh api \
  --method PUT \
  -H "Accept: application/vnd.github.v3+json" \
  "/orgs/${ORG}/teams/${TEAM}/memberships/${USER}" \
  -f role='maintainer'
