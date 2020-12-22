#!/usr/bin/env bash

set -uo pipefail
trap 's=$?; echo "$0: Error on line "$LINENO": $BASH_COMMAND"; exit $s' ERR
IFS=$'\n\t'

readonly HOME_BIN="${HOME}/bin"
readonly CONFIGURE_WORKSTATION_HOME="${HOME}/configure-workstation"

cd "${HOME}"
git clone https://github.com/bboykov/configure-workstation.git
cd configure-workstation

if [ ! -d "${HOME_BIN}" ]; then
  mkdir -p "${HOME_BIN}"
fi

ln -sf "${CONFIGURE_WORKSTATION_HOME}/configure-workstation" "${HOME_BIN}/configure-workstation"

cd "${CONFIGURE_WORKSTATION_HOME}"
bash configure-workstation
