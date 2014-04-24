#!/bin/bash

# makeicons.sh
# Satyender Mahajan
# 03/13/2012
#
# Adapted from Jesse Collis' script to include new iPad Retina display versions
# http://blog.jcmultimedia.com.au/2011/02/a-simple-bash-script-to-automatically-create-your-ios-icon-png-files.html
# 
# Description:
# This will make all required iOS icons from an original png file
# NOTE: Don't use a name for your original file like Icon.png. It will be overwritten.
#
# Usage:
# 	sh makeicons.sh Original.png

currentDirectory=$(pwd)

# iTunes Artwork 
sips --resampleWidth 1024 "${currentDirectory}/${1}" --out "${currentDirectory}/iTunesArtwork"

# App icon (iPhone + iPhone Retina)
sips --resampleWidth 57 "${currentDirectory}/${1}" --out "${currentDirectory}/Icon.png"
sips --resampleWidth 114 "${currentDirectory}/${1}" --out "${currentDirectory}/Icon@2x.png"

# App icon (iPad + iPad Retina)
sips --resampleWidth 72 "${currentDirectory}/${1}" --out "${currentDirectory}/Icon-72.png"
sips --resampleWidth 144 "${currentDirectory}/${1}" --out "${currentDirectory}/Icon-72@2x.png"

# Settings/Search results icon (iPhone/iPad)
sips --resampleWidth 29 "${currentDirectory}/${1}" --out "${currentDirectory}/Icon-Small.png"
sips --resampleWidth 58 "${currentDirectory}/${1}" --out "${currentDirectory}/Icon-Small@2x.png"

# Search results icon (iPad)
sips --resampleWidth 50 "${currentDirectory}/${1}" --out "${currentDirectory}/Icon-Small-50.png"
sips --resampleWidth 100 "${currentDirectory}/${1}" --out "${currentDirectory}/Icon-Small-50@2x.png"