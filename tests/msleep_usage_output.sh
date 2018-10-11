#!/bin/bash
# add 2016-11-22 by Jan Gerhards, released under ASL 2.0

. $srcdir/diag.sh init

./msleep &> $RSYSLOG_DYNNAME.output
grep "usage: msleep" $RSYSLOG_DYNNAME.output 

if [ ! $? -eq 0 ]; then
  echo "invalid response generated"
  error_exit  1
fi;

exit_test
