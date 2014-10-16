#!/bin/sh

## mozjpeg, jpegoptim and optipng must all be installed


if [ "$( uname -s )" = Darwin ]; then
  ## mac version
  find . -name “*.jpg” -print0 | xargs -0 -I filename jpegtran -copy none -optimize -outfile filename filename
  find . -name “*.jpg” -print0 | xargs -0 -I filename jpegoptim -m65 -outfile filename filename
else
  ## add linux version here
  echo "coming soon"
fi
