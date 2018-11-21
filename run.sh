#!/bin/bash
source functions.sh

# run install/uninstall commands
case "$1" in
  '-i') execute install/"$2".sh;;
  '-u') execute uninstall/"$2".sh;;
esac
