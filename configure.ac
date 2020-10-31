AC_PREREQ([2.10])
AC_INIT([libtenma], [1.0.0], [matt@majenko.co.uk], [], [https://majenko.co.uk])
LT_INIT
AC_CONFIG_SRCDIR([config.h.in])
AC_CONFIG_HEADERS([config.h])
AM_INIT_AUTOMAKE([subdir-objects no-dependencies foreign])
AC_CONFIG_MACRO_DIR([m4])

AM_SILENT_RULES([yes])

AC_ARG_ENABLE(debug,
AS_HELP_STRING([--enable-debug],
               [enable debugging, default: no]),
[case "${enableval}" in
             yes) debug=true ;;
             no)  debug=false ;;
             *)   AC_MSG_ERROR([bad value ${enableval} for --enable-debug]) ;;
esac],
[debug=false])

AM_CONDITIONAL(DEBUG, test x"$debug" = x"true")

AC_CHECK_HEADER(libusb-1.0/libusb.h, [], [
    AC_MSG_FAILURE(libusb not found)
])
AC_CHECK_LIB(usb-1.0, libusb_init, [], [
    AC_MSG_FAILURE(libusb not found)
])

AC_CHECK_HEADER(gd.h, [], [
    AC_MSG_FAILURE(gd not found)
])
AC_CHECK_LIB(gd, gdImageSetPixel, [], [
    AC_MSG_FAILURE(gd not found)
])

# Checks for programs.
AC_PROG_CC

AC_CONFIG_FILES([Makefile src/Makefile examples/Makefile examples/cap-728705/Makefile])
AC_OUTPUT

