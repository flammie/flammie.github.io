## Process this file with autoconf to produce configure script

## Copyright (C) 2014, Flammie
#
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, version 3 of the License.

## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.

## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

AC_PREREQ([2.62])
LT_PREREQ([2.2.6])
AC_INIT([flammie.dyndns.org], [20140728], [flammie@iki.fi], [flammie.dyndns.org], [http://flammie.dyndns.org])
AM_INIT_AUTOMAKE([1.12 -Wall -Werror -Wno-portability foreign check-news color-tests silent-rules subdir-objects])
AM_SILENT_RULES([yes])
AC_PATH_PROGS([RST2HTML], [rst2html.py rst2html], [false])
AC_PATH_PROG([MARKDOWN], [markdown_py], [false])
AC_PATH_PROG([RSYNC], [rsync], [false])
AC_CONFIG_FILES([Makefile])
AC_OUTPUT

cat <<EOF
-- Building $PACKAGE_STRING
EOF
