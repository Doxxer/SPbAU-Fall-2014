#!/bin/bash

function testcase {
  echo "test:" $1
  ./build/Debug/mvm /Users/doxer/Documents/SvnRepos/mathvm/tests/$1.mvm > output
  # cat output
  diff output /Users/doxer/Documents/SvnRepos/mathvm/tests/$1.expect
}

for test in add assign bitwise div expr for function if literal mul sub while; do
  testcase $test
done

rm output
