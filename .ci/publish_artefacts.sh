#!/bin/bash -leE

SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
. ${SCRIPT_DIR}/settings.sh

echo 'Publish artefacts...'

export UPSTREAM_JOB_NAME=${JOB_NAME}
export UPSTREAM_BUILD_NUMBER=${BUILD_NUMBER}
export UPSTREAM_ghprbGhRepository=${ghprbGhRepository}
export UPSTREAM_ghprbPullId=${ghprbPullId}

ls -al ${ARTEFACT_DIR}

publish_artefacts_to_gist.py

echo 'Publish artefacts... DONE'
