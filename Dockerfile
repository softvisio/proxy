FROM ghcr.io/zerocluster/node/app

RUN \
    # install dependencies
    NODE_ENV=production npm install-clean \
    \
    # cleanup
    && /bin/bash <(curl -fsSL https://raw.githubusercontent.com/softvisio/scripts/main/env-build-node.sh) cleanup
