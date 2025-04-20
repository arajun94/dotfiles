#!/bin/bash

echo ".configディレクトリ以外をリンク"

for file in $(find . | sed -e "/.git/d" -e "/.config/d" -e "s/^.\///g" | grep "^\.\w"); do
    ln -bs ${PWD}/${file} ${HOME}
done

echo "完了"

echo ".configディレクトリをリンク"

for file in $(ls .config); do

    #ディレクトリが既に存在する場合退避
    for testfile in $(ls ${HOME}/.config); do
        if [ ${testfile} == ${file} ]; then
            mv ${HOME}/.config/${file} ${HOME}/.config/${file}_old
        fi
    done

    ln -fs ${PWD}/.config/${file} ${HOME}/.config
done

echo "完了"