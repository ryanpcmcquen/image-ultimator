#!/bin/sh

## mozjpeg, jpegoptim and optipng must all be installed


if [ "$( uname -s )" = Darwin ]; then
  ## mac version
  ls --color=never *.jpg | xargs -i /usr/local/Cellar/mozjpeg/2.1/bin/jpegtran {} > % %.old
  ls --color=never *.jpg | xargs -i jpegoptim -m65 {}
else
  ## add linux version here
  echo "coming soon"
fi
