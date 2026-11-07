#!/usr/bin/env bash
set -euo pipefail

# An empty `SUDO`, unpacks it into `DEST_DIR`.
make build install \
  BUILD_CONFIGURATION=release \
  DEST_DIR="${PREFIX}/" \
  SUDO= \
  GIT_COMMIT="${GIT_COMMIT}" \
  WARNINGS_AS_ERRORS=false \
  CLUSTER_SHIM_BINARY=none
