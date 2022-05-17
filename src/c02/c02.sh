#!/bin/sh

test_c02()
{
	local PROJECT_NAME="c02"

	TESTS_NAMES=(ft_strcpy )
	EXEC_PATHS=($PROJECT_NAME/ex00 $PROJECT_NAME/ex01 $PROJECT_NAME/ex02 $PROJECT_NAME/ex03 $PROJECT_NAME/ex04 $PROJECT_NAME/ex05 $PROJECT_NAME/ex06 $PROJECT_NAME/ex07 $PROJECT_NAME/ex08)
	NUM_OF_FILES_PER_TEST=(1 1 1 1 1 1 1 1 1)

	print_start_project $PROJECT_NAME

	i=0
	while [ $i -ne ${#TESTS_NAMES[@]} ]
	do
		generc_test ${TESTS_NAMES[i]} ${EXEC_PATHS[i]} ${NUM_OF_FILES_PER_TEST[i]}
		i=$((i+1))
	done
}
