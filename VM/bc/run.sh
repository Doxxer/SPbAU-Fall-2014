#!/bin/bash

function testcase {
  echo "test:" $1
  /Users/doxer/Library/Caches/clion10/cmake/generated/c523a812/c523a812/Debug/bc /Users/doxer/Documents/SvnRepos/mathvm/tests/$1.mvm > output
  # cat output
  diff output /Users/doxer/Documents/SvnRepos/mathvm/tests/$1.expect
}

for test in add assign bitwise div expr for function if literal mul sub while; do
  testcase $test
done

rm output
