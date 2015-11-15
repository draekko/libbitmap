ACLOCAL_AMFLAGS = -I m4

SUBDIRS = src test build

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = libbmp.pc

$(pkgconfig_DATA): config.status

EXTRA_DIST = autogen.sh
