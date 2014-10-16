#!/bin/sh

## mozjpeg, jpegoptim and optipng must all be installed


if [ "$( uname -s )" = Darwin ]; then
  ## mac version
  ls *.jpg | xargs /usr/local/Cellar/mozjpeg/2.1/bin/jpegtran {} > new.%
  ls *.jpg | xargs jpegoptim -m65 {}
else
  ## add linux version here
  echo "coming soon"
fi
