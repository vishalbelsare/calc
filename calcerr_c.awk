#!/usr/bin/sed
#
# calcerr_c - help produce calcerr.c from calcerr.tbl
#
# Copyright (C) 1999  Landon Curt Noll
#
# Calc is open software; you can redistribute it and/or modify it under
# the terms of the version 2.1 of the GNU Lesser General Public License
# as published by the Free Software Foundation.
#
# Calc is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.	See the GNU Lesser General
# Public License for more details.
#
# A copy of version 2.1 of the GNU Lesser General Public License is
# distributed with calc under the filename COPYING-LGPL.  You should have
# received a copy with calc; if not, write to Free Software Foundation, Inc.
# 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
# Under source code control:	1996/05/24 03:15:35
# File existed as early as:	1996
#
# chongo <was here> /\oo/\	http://www.isthe.com/chongo/
# Share and enjoy!  :-) http://www.isthe.com/chongo/tech/comp/calc/
#
BEGIN {
    printf("#include <stdio.h>\n");
    printf("#include \"calcerr.h\"\n\n");
    printf("#include \"have_const.h\"\n\n");
    printf("#include \"banned.h\"\t");
    printf("/* include after system header <> includes */\n\n");
    printf("/*\n");
    printf(" * names of calc error values\n");
    printf(" */\n");
    printf("CONST char *error_table[E__COUNT+2] = {\n");
    printf("	\"No error\",\n");
}
{
    print $0;
}
END {
    printf("	NULL\n");
    printf("};\n");
}
