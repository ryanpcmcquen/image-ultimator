`imgult`, The image-ultimator.
===============

## What is it?
`imgult` is a tiny and mighty script that will recursively loop through a directory and its subdirectories optimizing all GIFs, JPGs, PNGs and SVGs (the script supports several types of these kinds of extensions, check the source to see). It also removes EXIF data (run with ```EXIFREMOVE=n``` to keep EXIF data). You can backup the images by running it with (```BACKUPIMAGES=true```).

Check out the [imgult site](https://imgult.github.io)!

## What do people say about it?

[Torkiliuz](https://github.com/Torkiliuz) succesfully tested `imgult` against a **26TB** sample that had approximately **140GB** of images. Wow! He made some helpful suggestions for the `4.0.01` release. Because of that, `imgult` now creates a file called `imgult-processed-files.txt` as a record of previously processed stuff. You can delete it if you do not mind files being processed again. :tada:

### I just want to run it once (it will kindly remove itself):

    curl https://raw.githubusercontent.com/ryanpcmcquen/image-ultimator/master/imgult | sh

### I love this script! I want to *install* it and use it everywhere!

    wget -N https://raw.githubusercontent.com/ryanpcmcquen/image-ultimator/master/imgult; sudo install -m755 imgult /usr/local/bin/; rm imgult

**PSST!** To upgrade `imgult`, just run the same command as install (^^ THIS GUY ^^). It's just a shell script after all! :tada:


Before you run it you need these amazing programs!

```
jpegoptim
mozjpeg
optipng
pngquant
gifsicle
exiv2
svgo
```

Check here to see the recommended _minimum_ versions of these tools:

https://github.com/ryanpcmcquen/image-ultimator/issues/5#issuecomment-198301854

Of course, newer versions are probably even better! :smiley:

### Linux:

#### Slackware:

    sbopkg -i jpegoptim -i mozjpeg -i optipng -i pngquant -i gifsicle

#### Fedora:

    sudo dnf install jpegoptim optipng pngquant gifsicle exiv2

#### Ubuntu (`16.04+` recommended):

    sudo apt-get install jpegoptim optipng pngquant gifsicle exiv2

---

You will need to compile `mozjpeg` from source. You will probably need these:

    sudo dnf install nasm autoconf

    sudo apt-get install nasm libtool autoconf build-essential

Some Ubuntu systems will also require the following packages:

    sudo apt-get install pkg-config libpng-dev

After that, download the most recent release and run something like this:

```sh
autoreconf -fiv
./configure --disable-static

make
sudo make install
```

### Mac:

    brew install jpegoptim mozjpeg optipng pngquant gifsicle exiv2

### Linux & Mac:

    npm install -g svgo


# USE IMGULT AT YOUR OWN RISK!

Just run this command in any directory with images, note that it will *OVERWRITE* images (GIFs, JPGs, PNGs & SVGs) and loop recursively through all directories INSIDE the directory you run it in. There is a BACKUP option though.  ;^)


##### If it is installed, how do I use it?

 - 'cd' to the directory you want to use it in

Run:

    imgult

Or feed imgult directories and/or files:

    imgult Downloads/ 1.png 2.jpg

##### EXIF removal

The default is to remove EXIF data, to keep EXIF data, run:

    EXIFREMOVE=n imgult


##### BACKUPs

To back up all original images to ```imgult-backup-files/```, run:

    BACKUPIMAGES=true imgult

This can be run with the EXIF option as well:

    EXIFREMOVE=n BACKUPIMAGES=true imgult

##### IMGATCH

To turn off the image matching service (which ignores previously processed files), either run `imgult` like so:

    ENGAGE_IMGATCH_SERVICE=false imgult

Or, set your environment to have `ENGAGE_IMGATCH_SERVICE` to `false` (`export` it in `.bashrc` or `.bash_profile`).
