image-ultimator
===============

## What is it?
imgult is a tiny and mighty script that will recursively loop through a directory and its subdirectories optimizing all GIFs, JPGs, PNGs and SVGs (the script supports several types of these kinds of extensions, check the source to see). It also removes EXIF data (run with ```EXIFREMOVE=n``` to keep EXIF data). You can backup the images by running it with (```BACKUPIMAGES=true```).


### I just want to run it once (it will kindly remove itself):

    curl https://raw.githubusercontent.com/ryanpcmcquen/image-ultimator/master/imgult | sh


### I love this script! I want to *install* it and use it everywhere!

    wget -N https://raw.githubusercontent.com/ryanpcmcquen/image-ultimator/master/imgult; sudo install -m755 imgult /usr/local/bin/; rm imgult



Before you run it you need these amazing programs!

Linux:

    sbopkg -i jpegoptim -i mozjpeg -i optipng -i pngquant -i gifsicle

Mac:

    brew install jpegoptim mozjpeg optipng pngquant gifsicle exiv2

Linux & Mac:

    npm install -g svgo


# USE AT YOUR OWN RISK!

Just run this command in any directory with images, note that it will *OVERWRITE* images (GIFs, JPGs, PNGs & SVGs) and loop recursively through all directories INSIDE the directory you run it in. There is a BACKUP option though.  ;^)



##### If it is installed, how do I use it?

 - 'cd' to the directory you want to use it in

Run:

    imgult

Or feed imgult directories or files directly:

    imgult Downloads/ 1.png 2.jpg


P.S. You may feed a different quality level to imgult by running it like so (0-100, default is 87, only applies to JPGs):

    JPGQUAL=70 imgult


##### EXIF removal

Default is to remove exif data, to keep EXIF data, run:

    EXIFREMOVE=n imgult


##### BACKUPs

To back up all original images to ```imgult-backup-files/```, run:

    BACKUPIMAGES=true imgult

This can be run with the EXIF option as well:

    EXIFREMOVE=n BACKUPIMAGES=true imgult

