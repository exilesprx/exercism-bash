#!/usr/bin/env bash

main() {
	number="$1"
	result=""

	if [[ $((number % 3)) -eq 0 ]]; then
		result+="Pling"
	fi

	if [[ $((number % 5)) -eq 0 ]]; then
		result+="Plang"
	fi

	if [[ $((number % 7)) -eq 0 ]]; then
		result+="Plong"
	fi

	if [[ -z $result ]]; then
		result="$number"
	fi

	echo -n "$result"
}

main "$@"
