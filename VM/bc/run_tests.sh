#!/bin/bash

MATH_VM=/Users/doxer/Documents/SvnRepos/mathvm

MATH_VM_TESTS=${MATH_VM}/tests
MATH_VM_BIN=./build/Debug/mvm

SIMPLE_TESTS=${MATH_VM_TESTS}/.
OPTIONAL=${MATH_VM_TESTS}/optional
ADDITIONAL=${MATH_VM_TESTS}/additional
FAIL=${MATH_VM_TESTS}/additional/fail
MY_TESTS=./mytests

function run_test {
    echo -n "test:" ${1##*/} "-- "
    ${MATH_VM_BIN} ${1}.mvm > output
    program=$?
    if [[ -f ${1}.expect ]]; then
        diff output ${1}.expect
        diffresult=$?
    else
        diffresult=0
    fi
    if [ ${program} -eq $2 ] && [ ${diffresult} -eq 0 ]; then
        printf "\e[1;32mOK\e[0m"
    else
        printf "\e[1;31m!!! FAILED !!!\e[0m"
    fi
        echo ""
}

echo "-------------- simple tests (all should be OK) -------------- "
for test in add assign bitwise div expr 'for' 'function' 'if' literal mul sub 'while'; do
    run_test ${SIMPLE_TESTS}/${test} 0
done

echo "-------------- my tests (all should be OK) -------------- "
for test in `find ${MY_TESTS} -name '*.mvm'`; do
    run_test ${test%.*} 0
done

echo "-------------- failing test (all should be OK) -------------- "
for test in for_range for_var function-return-void if-fun op_bin op_not op_streq op_sub range function-cast; do
    run_test ${FAIL}/${test} 100
done

echo "-------------- additional tests (all should be OK) -------------- "
for test in casts complex fib_closure function-call 'function' vars; do
    run_test ${ADDITIONAL}/${test} 0
done

echo "-------------- long tests (please wait for each test about 5-10sec) (all should be OK) -------------- "
for test in ackermann ackermann_closure complex2 fib; do
    run_test ${ADDITIONAL}/${test} 0
done

#echo "-------------- optional tests -------------- "
#for test in function_native; do
#    run_test ${OPTIONAL}/${test}
#done


rm output
