#!/bin/bash

compile_tests()
{
	local MAIN=$1
	local USR_SRC=$2
	

	local err_msg=$(gcc -Wall -Werror -Wextra $MAIN/*.c $USR_SRC/*.c)
	
	if [ ! -e $EXEC_FIEL ] ; then
		IS_COMPLIE=$ERROR
	else
		IS_COMPLIE=$SUCCESS
	fi
}

compile_tests_c08()
{
	local MAIN=$1
	local USR_SRC=$2
	C_INCLUDE_PATH=$USR_SRC:$MAIN

	if [ "$USR_SRC" == "/Users/yrabby/c08/ex04" ] ; then
		local err_msg=$(gcc -Wall -Werror -Wextra $USR_SRC/*.c $MAIN/*.c)
	else
		local err_msg=$(gcc -Wall -Werror -Wextra $MAIN/*.c)
	fi
	
	if [ ! -e $EXEC_FIEL ] ; then
		IS_COMPLIE=$ERROR
	else
		IS_COMPLIE=$SUCCESS
	fi
}

compile_tests_c06()
{
	local USR_SRC=$1

	local err_msg=$(gcc -Wall -Werror -Wextra $USR_SRC -o $UNIQUE_EXEC)
	if [ ! -e $UNIQUE_EXEC ] ; then
		IS_COMPLIE=$ERROR
	else
		IS_COMPLIE=$SUCCESS
	fi
}
