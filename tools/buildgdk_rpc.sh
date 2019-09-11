#! /usr/bin/env bash
set -e

GDK_RPC_NAME="gdk_rpc-62ce2ffec09942fd300fdca0a21dbb0b6ef72d96"

cp -r "${MESON_SOURCE_ROOT}/subprojects/${GDK_RPC_NAME}" "${MESON_BUILD_ROOT}/gdk_rpc"

cd "${MESON_BUILD_ROOT}/gdk_rpc"

## fixme handle all build targets and build into build_root/gdk_rpc/build/lib
cargo build --release
