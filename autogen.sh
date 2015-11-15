#!/bin/sh

aclocal
autoconf
autoheader
libtoolize
automake --add-missing --gnu --copy --no-force
