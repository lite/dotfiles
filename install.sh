#!/bin/sh

DIR=$(cd $(dirname $0);pwd)

# setup git submodule plugins
echo "Update git Submodules."
cd $DIR
git pull
git submodule init
git submodule update

# setup dot files symbolic link
#FILES=`ls -A $DIR | sed -r 's/^(.git|install.sh|README.md)$//g'`

for FILE in `ls -A $DIR`
do
  case "$FILE" in .git|install.sh|README.md)
    continue;;
  esac
  ln -vsf $DIR/$FILE $HOME
done

# setup my vimrc files
BUNDLE_DIR=$DIR/.vim/bundle
if [ ! -d "$BUNDLE_DIR" ]; then
    mkdir -p $BUNDLE_DIR
fi
vim +NeoBundleInstall +q


