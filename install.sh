#!/bin/sh

# setup dot files symbolic link
DIR=$(cd $(dirname $0);pwd)
for FILE in `ls -A $DIR | sed -r 's/^(.git||install.sh|README.md)$//g'`
do
  ln -vsf $DIR/$FILE $HOME
done

# setup git submodule plugins
echo "Update git Submodules."
cd $DIR
git pull
git submodule init
git submodule update

# setup my vimrc files
BUNDLE_DIR=$DIR/.vim/bundle
if [ ! -d "$BUNDLE_DIR" ]; then
    echo "Create vim/bundle dir."
    mkdir -p $BUNDLE_DIR
fi
vim +NeoBundleInstall +q

