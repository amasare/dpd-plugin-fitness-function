#!/bin/bash


set -eu

# Fetch the data that was filled out in the previous block step
RELEASE_CHANGELOG=$(buildkite-agent meta-data get release-changelog)
RELEASE_VERSION=$(buildkite-agent meta-data get release-version) 

git tag -a "${RELEASE_VERSION}" -m "CHANGELOG. ${RELEASE_CHANGELOG}"
git push origin "${RELEASE_VERSION}"
echo "+++ :boom: created release ${RELEASE_VERSION} with CHANGELOG ${RELEASE_CHANGELOG}"

echo "✅"