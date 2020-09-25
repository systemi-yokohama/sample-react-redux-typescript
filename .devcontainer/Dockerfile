# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.134.1/containers/javascript-node/.devcontainer/base.Dockerfile
ARG VARIANT=14-buster
FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends software-properties-common \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0 \
    && apt-add-repository https://cli.github.com/packages \
    && apt-get update \
    && apt-get -y install --no-install-recommends gh \
    && apt-get -y remove --purge software-properties-common \
    && apt-get -y autoremove \
    && rm -rf /var/lib/apt/lists/*

# [Optional] Uncomment if you want to install an additional version of node using nvm
# ARG EXTRA_NODE_VERSION=10
# RUN su node -c "source /usr/local/share/nvm/nvm.sh && nvm install ${EXTRA_NODE_VERSION}"

# [Optional] Uncomment if you want to install more global node modules
# RUN sudo -u node npm install -g <your-package-list-here>
RUN sudo -u node npm install -g editorconfig stylelint \
    && npm cache clean --force > /dev/null 2>&1 \
    && sudo -u node yarn config set scripts-prepend-node-path yes
