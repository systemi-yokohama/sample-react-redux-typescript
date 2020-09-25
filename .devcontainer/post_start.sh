#!/bin/sh

if [ ! -d "${1}/.vscode" ]; then
  mkdir -p "${1}/.vscode"
fi

if [ ! -f "${1}/.vscode/launch.json" ]; then
  cat << EOF > "${1}/.vscode/launch.json"
{
  "version": "0.2.0",
  "configurations": [
    {
      "type": "chrome",
      "request": "launch",
      "name": "Launch Chrome against localhost",
      "url": "http://localhost:3000",
      "webRoot": "\${workspaceRoot}"
    },
  ]
}
EOF
fi

if [ -f "${1}/package.json" ]; then
  yarn install
fi
