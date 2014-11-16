#!/bin/bash

MATH_VM_TESTS=/Users/doxer/Documents/SvnRepos/mathvm/tests

SIMPLE_TESTS=${MATH_VM_TESTS}/.
OPTIONAL=${MATH_VM_TESTS}/optional
ADDITIONAL=${MATH_VM_TESTS}/additional

function run_test {
  echo -n "test:" ${1##*/}
  ./build/Debug/mvm $1.mvm > output
  # cat output
  diff output $1.expect
  if [ $? -eq 0 ]; then
    echo -n " -- OK"
  fi
  echo ""
}

echo "--- simple tests --- "
for test in add assign bitwise div expr 'for' 'function' 'if' literal mul sub 'while'; do
    run_test ${SIMPLE_TESTS}/${test}
done

#echo "--- optional tests --- "
#for test in function_native; do
#    run_test ${OPTIONAL}/${test}
#done

#echo "--- additional tests --- "
#for test in casts; do
#    run_test ${ADDITIONAL}/${test}
#done

rm output
