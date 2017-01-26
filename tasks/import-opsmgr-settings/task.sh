#!/bin/bash -eu

function main() {

  chmod +x tool-om/om-linux
  CMD_PATH="tool-om/om-linux"

  local cwd
  cwd="${1}"

  ./${CMD_PATH} --target "${OPSMAN_URI}" \
     --skip-ssl-validation \
     --username "${OPSMAN_USERNAME}" \
     --password "${OPSMAN_PASSWORD}" \
     import-installation --installation "./opsmgr-settings"

   echo "${OPSMAN_SETTINGS_FILENAME} Imported opsmgr-settings to ${OPSMAN_URI}."
}

main "${PWD}"