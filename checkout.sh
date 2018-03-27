#!/usr/bin/env bash
name="<testsuite errors=\"0\" failures=\"0\""
result=`grep -c "${name}" report/TESTS-TestSuites.xml`
if [ "${result}" -gt "0" ]
then
    exit 0
 else
    exit 1
 fi
