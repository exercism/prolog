#!/usr/bin/env bash

set -uo pipefail

declare -i exit_code=0

for test_file in $(find exercises/practice -type f -name '*_tests.plt' | sort)
do
    if (( $(grep -c 'condition(true)' "${test_file}") > 1 )); then
        echo "${test_file}: has more than one unskipped test"
        exit_code=1
    fi

    if ! grep -q 'test(.*condition(true)' "${test_file}"; then
        echo "${test_file}: has not unskipped the first test"
        exit_code=1
    fi
done

if (( "${exit_code}" != 0)); then
    exit "${exit_code}"
fi
