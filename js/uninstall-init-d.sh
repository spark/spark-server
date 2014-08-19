#!/bin/bash

if [ "$(id -u)" != "0" ]; then
  echo "Must be executed as root"
  exit 1
fi

SCRIPT_NAME=sparkup
INIT_D_SCRIPT=/etc/init.d/$SCRIPT_NAME

$INIT_D_SCRIPT stop

update-rc.d -f $SCRIPT_NAME remove

rm $INIT_D_SCRIPT