#!/bin/sh

## mozjpeg, jpegoptim and optipng must all be installed

read -p "Would you like to BACKUP the original files? [y/N]: " response
case $response in
  [yY][eE][sS]|[yY])
    export BACKUPIMAGES=true;
    echo "You are backing things up, better safe than sorry!";
    ;;
  *)
    echo "You are a risk taker.";
    ;;
esac

if [ $BACKUPIMAGES = true ]; then
  mkdir -p ./original-image-files/
  find . -name "*.jpg" -type f -exec cp {} ./original-image-files/{} \;
  find . -name "*.png" -type f -exec cp {} ./original-image-files/{} \;
fi

if [ "$( uname -s )" = Darwin ]; then
  ## mac version
  find . -name "*.jpg" -type f -exec jpegtran -copy none -optimize -outfile {} {} \;
  find . -name "*.jpg" -type f -exec jpegoptim -m65 {} \;
  find . -name "*.png" -type f -exec optipng {} \;
else
  ## add linux version here
  echo "coming soon"
fi

