#!/bin/sh

source ~/.dmenurc

exec sh -c "source ~/.dmenurc; `echo \"dmenu_run \$DMENU\"`"
