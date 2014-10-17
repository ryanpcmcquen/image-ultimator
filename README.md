image-ultimator
===============

#### I just want to run it once (it will remove itself):

    wget -N https://raw.githubusercontent.com/ryanpcmcquen/image-ultimator/master/imgult; sh imgult; rm imgult


### I love this script! I want to *install* it and use it everywhere!

    wget -N https://raw.githubusercontent.com/ryanpcmcquen/image-ultimator/master/imgult; install -m755 imgult /usr/local/bin/; rm imgult



Before you run it you need these amazing programs!

Linux:

    sbopkg -i jpegoptim -i mozjpeg -i optipng

Mac:

    brew install jpegoptim mozjpeg optipng


# USE AT YOUR OWN RISK!

Just run this command in any directory with images, note that it will *OVERWRITE* images (JPEGs, JPGs & PNGs) and loop recursively through all directories INSIDE the directory you run it in.



##### If it is installed, how do I use it?

 - 'cd' to the directory you want to use it in

Run:

    imgult


P.S. You may feed different qualities to imgult by running it like so (0-100, default is 90):

    q=70 imgult
    imgult q=70

