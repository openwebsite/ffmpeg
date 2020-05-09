#!/bin/sh
#
# Copyright (c) 2014 Tiancheng "Timothy" Gu.
#


die() {
    echo $1
    exit 1
}

#if [ $# != 1 ]; then
#    die "Usage: $0 <ffmpeg-source>"
#fi


current_dir=$(pwd)


export FFMPEG_HEADER1="$(cat src/template_head1)"
export FFMPEG_HEADER2="$(cat src/template_head_prod src/template_head2)"
export FFMPEG_HEADER3="$(cat src/template_head3)"
export FFMPEG_FOOTER="$(cat src/template_footer1 src/template_footer_prod src/template_footer2)"
export FA_ICONS=true

rm -rf build-doc
mkdir build-doc && cd build-doc
$current_dir/ffmpeg-4.2.2/configure --enable-gpl --disable-x86asm --enable-htmlpages|| die "configure failed"
make doc || die "doc not made"
cp doc/*.html ../docs/ || die "copy failed"

#cd ..
#rm -rf build-doc