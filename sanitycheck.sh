#!/bin/bash

#
# just a sanity check
#

testcases=0
broken=0

action="lorem"
if [ "`$action`" != "Lorem ipsum dolor sit amet," ]
then
    echo BROKEN: $action
    broken=$((broken+1))
else
    echo OK: $action
fi
testcases=$((testcases+1))

action="lorem -n 2"
if [ "`$action`" != "Lorem ipsum" ]
then
    echo BROKEN: $action
    broken=$((broken+1))
else
    echo OK: $action
fi
testcases=$((testcases+1))

action="lorem -n 2 --lower"
if [ "`$action`" != "lorem ipsum" ]
then
    echo BROKEN: $action
    broken=$((broken+1))
else
    echo OK: $action
fi
testcases=$((testcases+1))

action="lorem -n 2 --upper"
if [ "`$action`" != "LOREM IPSUM" ]
then
    echo BROKEN: $action
    broken=$((broken+1))
else
    echo OK: $action
fi
testcases=$((testcases+1))

for random in "" "--randomize"
do
    for lorem in lorem decameron faust fleurs spook strindberg foo genesis
    do
        for n in 0 1 2 3 100 100000
        do
            action="lorem --$lorem -n $n $random"
            if [ `$action | wc -w` -ne $n ]
            then
                echo BROKEN: $action
                broken=$((broken+1))
            else
                echo OK: $action
            fi
            testcases=$((testcases+1))

            action="lorem --$lorem -s $n $random"
            if [ `$action | tr ";.\!?" "\n\n\n" | wc -l` -ne $((n+1)) ]
            then
                echo BROKEN: $action
                broken=$((broken+1))
            else
                echo OK: $action
            fi
            testcases=$((testcases+1))

            action="lorem --$lorem -c $n $random"
            if [ `$action | wc -c` -ne $((n+1)) ]
            then
                echo BROKEN: $action
                broken=$((broken+1))
            else
                echo OK: $action
            fi
            testcases=$((testcases+1))

            # there will be at least one line - 0 makes a blank one
            action="lorem --$lorem -l $n $random"
            if [ $n -eq 0 ]
            then
                n=1
            fi
            testcases=$((testcases+1))

            if [ `$action | wc -l` -ne $n ]
            then
                echo BROKEN: $action
                broken=$((broken+1))
            else
                echo OK: $action
            fi
            testcases=$((testcases+1))
        done
    done
done

echo $testcases test cases, $broken broken
