# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2020-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="alsa-ucm-conf"
PKG_VERSION="1.2.10"
PKG_SHA256="9c21e3f01ff00baa758df17e867cd36e24ebb41a6bec49737e99105e16f2ae97"
PKG_LICENSE="BSD-3c"
PKG_SITE="https://www.alsa-project.org/"
PKG_URL="https://www.alsa-project.org/files/pub/lib/alsa-ucm-conf-${PKG_VERSION}.tar.bz2"
PKG_LONGDESC="ALSA Use Case Manager configuration (and topologies)"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/share/alsa/
  cp -PR ${PKG_BUILD}/ucm2 ${INSTALL}/usr/share/alsa/
  # work around scripts/build removing empty directories, this leads to errors in ucm
  touch ${INSTALL}/usr/share/alsa/ucm2/conf.virt.d/.dont_remove_this_dir
}
