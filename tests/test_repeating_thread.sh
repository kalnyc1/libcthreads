#!/bin/bash
#
# Library repeating thread type testing script
#
# Copyright (c) 2012-2013, Joachim Metz <joachim.metz@gmail.com>
#
# Refer to AUTHORS for acknowledgements.
#
# This software is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this software.  If not, see <http://www.gnu.org/licenses/>.
#

EXIT_SUCCESS=0;
EXIT_FAILURE=1;
EXIT_IGNORE=77;

test_repeating_thread()
{ 
	echo "Testing repeating thread type";

	./${CTHREADS_TEST_REPEATING_THREAD};

	RESULT=$?;

	echo "";

	return ${RESULT};
}

CTHREADS_TEST_REPEATING_THREAD="cthreads_test_repeating_thread";

if ! test -x ${CTHREADS_TEST_REPEATING_THREAD};
then
	CTHREADS_TEST_REPEATING_THREAD="cthreads_test_repeating_thread.exe";
fi

if ! test -x ${CTHREADS_TEST_REPEATING_THREAD};
then
	echo "Missing executable: ${CTHREADS_TEST_REPEATING_THREAD}";

	exit ${EXIT_FAILURE};
fi

if ! test_repeating_thread;
then
	exit ${EXIT_FAILURE};
fi

exit ${EXIT_SUCCESS};

