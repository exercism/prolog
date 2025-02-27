#!/usr/bin/env bash

set -euo pipefail

declare -i TEST_RESULT=0
FAILED_EXERCISES=''

for example_file in $(find exercises/practice -type f -name '*.example.pl' | sort)
do
    echo "${example_file}"
    example_dir=$(dirname "${example_file}")
    exercise_dir=$(dirname "${example_dir}")
    exercise=$(basename "${example_file}" .example.pl)
    echo '-------------------------------------------------------'
    echo "Testing ${exercise}"
    if ! swipl -f "${example_file}" \
               -s "${exercise_dir}/${exercise}_tests.plt" \
               -g run_tests,halt \
               -t 'halt(1)' \
               --on-error=status \
               -- --all; then
        TEST_RESULT=1
        FAILED_EXERCISES+="${example_file}\n"
    fi
done

if [ "${TEST_RESULT}" -ne 0 ]; then
    echo "The following exercises failed:"
    printf "%b" "${FAILED_EXERCISES}"
    exit "${TEST_RESULT}"
fi
