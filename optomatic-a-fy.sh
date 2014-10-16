#!/bin/sh

## mozjpeg, jpegoptim and optipng must all be installed


if [ "$( uname -s )" = Darwin ]; then
  ## mac version
  find . -name "*.jpg" -type f -exec jpegtran -copy none -optimize -outfile {} {} \;
  find . -name "*.jpg" -type f -exec jpegoptim -m65 {} \;
else
  ## add linux version here
  echo "coming soon"
fi

