#!/usr/bin/env bash

# abort if not executed as root
if [[ $(id -u) != "0" ]]; then
  echo "Usage: run ${0##*/} as root" 1>&2
  exit 1
fi

echo "Installing WebDAV filesystem driver..."

apt-get update
apt-get -qq install davfs2

echo "Done."