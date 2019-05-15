#!/bin/sh
if [ -z "$1" ]; then
    echo "Usage: $0 <base-name>"
    exit 1
fi
rm -rf elecrow/
mkdir -p elecrow
cp $1.GBL elecrow/$1.GBL
cp $1.GBS elecrow/$1.GBS
cp $1.GBO elecrow/$1.GBO
cp $1.GTL elecrow/$1.GTL
cp $1.GTS elecrow/$1.GTS
cp $1.GTO elecrow/$1.GTO
cp $1.GML elecrow/$1.GML
cp $1.TXT elecrow/$1.TXT

zip -j -l $1-elecrow.zip elecrow/*
mv $1-elecrow.zip elecrow/
