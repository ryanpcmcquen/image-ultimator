image-ultimator
===============

##What is it?
imgult is a tiny and mighty script that will recursively loop through a directory and its subdirectories optimizing all JPGs, JPEGs and PNGs. It also has the option to remove EXIF data.


#### I just want to run it once (it will remove itself):

    wget -N https://raw.githubusercontent.com/ryanpcmcquen/image-ultimator/master/imgult; sh imgult; rm imgult


### I love this script! I want to *install* it and use it everywhere!

    wget -N https://raw.githubusercontent.com/ryanpcmcquen/image-ultimator/master/imgult; sudo install -m755 imgult /usr/local/bin/; rm imgult



Before you run it you need these amazing programs!

Linux:

    sbopkg -i jpegoptim -i mozjpeg -i optipng -i gifsicle

Mac:

    brew install jpegoptim mozjpeg optipng gifsicle


# USE AT YOUR OWN RISK!

Just run this command in any directory with images, note that it will *OVERWRITE* images (JPEGs, JPGs & PNGs) and loop recursively through all directories INSIDE the directory you run it in. There is a BACKUP option though.  ;^)



##### If it is installed, how do I use it?

 - 'cd' to the directory you want to use it in

Run:

    imgult


P.S. You may feed different qualities to imgult by running it like so (0-100, default is 90):

    imgult 70


##### EXIF removal

There is preliminary exif removal support, you will be prompted when you run the script. Only works for jpg, jpeg & png.
