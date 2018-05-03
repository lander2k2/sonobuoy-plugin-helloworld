#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

PLUGIN_NAME="${PLUGIN_NAME:-helloworld}"
RESULTS_DIR="${RESULTS_DIR:-/tmp/results}"

if [ ! -f /usr/local/bin/etcdctl ]; then
    echo "etcdctl is NOT installed" > ${RESULTS_DIR}/result
else
    echo "etcdctl is installed" > ${RESULTS_DIR}/result
fi

# tar up the results
cd ${RESULTS_DIR}
tar -czf ${PLUGIN_NAME}.tar.gz *

# signal test complete
echo -n "${RESULTS_DIR}/${PLUGIN_NAME}.tar.gz" >"${RESULTS_DIR}/done"

