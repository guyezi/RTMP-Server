#!/bin/bash
CWD=$(cd "$(dirname $0)";pwd)
$CWD/liveqing stop
$CWD/liveqing uninstall