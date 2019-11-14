#!/bin/bash


set -eu

# Fetch the data that was filled out in the previous block step
RELEASE_CHANGELOG=$(buildkite-agent meta-data get release-changelog)
RELEASE_VERSION=$(buildkite-agent meta-data get release-version) 

git tag -a "${RELEASE_VERSION}" -m "CHANGELOG: ${RELEASE_CHANGELOG} ~Created via buildkite build ${BUILDKITE_BUILD_URL}~"
git push origin "${RELEASE_VERSION}"
echo "+++ :boom:" 
echo "+++ created release ${RELEASE_VERSION}"
echo "+++ for plugin ${BUILDKITE_REPO} "
echo "+++ with CHANGELOG ${RELEASE_CHANGELOG}"
echo "+++ ✅"