#!/bin/bash
#
# This is an install script for Ubuntu-specific packages.
#
set -ex

apt-get update
apt-get install -y locales
locale-gen en_US.UTF-8

PACKAGES=(build-essential pkg-config ccache cmake meson clang)

PACKAGES+=(libprotobuf-dev protobuf-compiler)
PACKAGES+=(libssl-dev)
PACKAGES+=(libsodium-dev)

apt-get install -y "${PACKAGES[@]}"

exit 0
