# taken from http://www.daybarr.com/blog/how-to-list-all-subdirectories-of-a-directory-in-bash

# To (non-recursively) list all children of a directory in bash
find . -type d -maxdepth 1 -mindepth 1

# and to do the same but omitting the .svn directory (subversion's working copy info)
find . -type d -maxdepth 1 -mindepth 1 -not -name .svn

# Useful in constructs such as
# view sourceprint?

for directory in `find . -type d -maxdepth 1 -mindepth 1 -not -name .svn`
do
    echo $directory exists here - do something with it
done
