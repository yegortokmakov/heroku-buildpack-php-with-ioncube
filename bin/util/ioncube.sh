#!/usr/bin/env bash

install_ioncube_ext() {
  if [[ ( ${#exts[@]} -eq 0 || ! ${exts[*]} =~ "ioncube" ) ]]; then
    install_ext "ioncube" "automatic" "http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz"
    exts+=("ioncube")

    cp $BUILD_DIR/.heroku/php/ioncube/ioncube_loader_lin_${PHP_VERSION%.*}.so $PHP_EXT_DIR/ioncube.so
  fi
}
