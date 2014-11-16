#!/bin/bash

function run_test {
  echo "test:" $1
  ./build/Debug/mvm /Users/doxer/Documents/SvnRepos/mathvm/tests/$1.mvm > output
  # cat output
  diff output /Users/doxer/Documents/SvnRepos/mathvm/tests/$1.expect
}

for test in add assign bitwise div expr 'for' literal mul sub 'if' 'while' 'function'; do
  run_test ${test}
done

rm output
