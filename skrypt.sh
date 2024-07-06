#!/bin/bash
a=$1
case "$a" in

  "--date") date -u ;;

  *) echo "blad" ;;

esac
