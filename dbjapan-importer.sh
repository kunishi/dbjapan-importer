#!/bin/sh

DBJAPAN_DIR=$HOME/git/dbjapan

for year in `ls $DBJAPAN_DIR/20*.txt`; do
  for file in `cat $year`; do
    echo $file
    (cd mailarchiver-hugo && bundle exec ruby mailimporter.rb $DBJAPAN_DIR/$file)
  done
done

for file in `ls $DBJAPAN_DIR/06_Dbjapan_mlmmj`; do
  echo $file
  (cd mailarchiver-hugo && bundle exec ruby mailimporter.rb $DBJAPAN_DIR/06_Dbjapan_mlmmj/$file)
done
