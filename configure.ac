m4_define([libbmp_major_version], [0])
m4_define([libbmp_minor_version], [1])
m4_define([libbmp_micro_version], [3])
m4_define([libbmp_interface_age], [2])
m4_define([libbmp_binary_age],
          [m4_eval(100 * libbmp_minor_version + libbmp_micro_version)])
m4_define([libbmp_version],
          [libbmp_major_version.libbmp_minor_version.libbmp_micro_version])

# libtool version related macros
m4_define([libbmp_lt_release], [libbmp_major_version.libbmp_minor_version])
m4_define([libbmp_lt_current],
          [m4_eval(100 * libbmp_minor_version + libbmp_micro_version - libbmp_interface_age)])
m4_define([libbmp_lt_revision], [libbmp_interface_age])
m4_define([libbmp_lt_age], [m4_eval(libbmp_binary_age - libbmp_interface_age)])
m4_define([libbmp_lt_current_minus_age],
          [m4_eval(libbmp_lt_current - libbmp_lt_age)])

AC_INIT()

PACKAGE_NAME=libbmp
AC_SUBST(PACKAGE_NAME)

PACKAGE_VERSION=libbmp_version
AC_SUBST(PACKAGE_VERSION)

AM_INIT_AUTOMAKE($PACKAGE_NAME, $PACKAGE_VERSION)
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([m4])

# Checks for programs.
AC_PROG_CC
AC_PROG_LIBTOOL

# Checks for header files.
AC_HEADER_STDC
AC_CHECK_HEADERS([stdlib.h string.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_SIZE_T
AC_TYPE_UINT8_T
AC_TYPE_UINT16_T
AC_TYPE_UINT32_T

# Checks for library functions.
AC_FUNC_MALLOC

# libtool versioning
LT_RELEASE=libbmp_lt_release
LT_CURRENT=libbmp_lt_current
LT_REVISION=libbmp_lt_revision
LT_AGE=libbmp_lt_age
LT_CURRENT_MINUS_AGE=libbmp_lt_current_minus_age
AC_SUBST(LT_RELEASE)
AC_SUBST(LT_CURRENT)
AC_SUBST(LT_REVISION)
AC_SUBST(LT_AGE)
AC_SUBST(LT_CURRENT_MINUS_AGE)

AC_CONFIG_FILES([
libbmp.pc
])

AC_OUTPUT([
Makefile
src/Makefile
test/Makefile
build/Makefile
])

