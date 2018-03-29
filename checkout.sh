#!/usr/bin/env bash
name="<testsuite errors=\"0\" failures=\"0\""
result=`grep -c "${name}" report/TESTS-TestSuites.xml`
name1="<testsuite errors=\"0\" failures"
result1=`grep -c "${name1}" report/TESTS-TestSuites.xml`
if [ "${result}" -eq "${result1}" ]
then
    git reset --hard
    git push
    exit 0
 else
    exit 1
 fi
