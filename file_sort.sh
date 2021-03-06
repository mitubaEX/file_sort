#!/bin/sh

find $1 -maxdepth 1 -type f |
while read -r file;
do

    # 拡張子取り出し
    fext="${file##*.}"

    # 拡張子の名前のディレクトリを作るかどうか
    # その後、移動
    # cpでコピーするかはお好きに
    if [ -e ./$fext ]; then
        mv "${file}" "$fext"
    else
        mkdir ./$fext
        mv "${file}" "$fext"
    fi
done
