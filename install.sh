#!/bin/zsh

if [ -z $DEFAULT_SHELL_DIR ]
then
    echo "No default shell dir set, defaulting to $HOME"
    export DEFAULT_SHELL_DIR=$HOME
fi

echo "### Installing oh-my-zsh ###"
if [ -d $HOME/.oh-my-zsh ]
then
    echo "oh-my-zsh already installed, updating instead"
    $HOME/.oh-my-zsh/tools/upgrade.sh 1> /dev/null
else
    # On top of being a great library to use, oh-my-zsh will do the following things on install:
    #   - ensure git is installed,
    #   - ensure zsh is installed,
    #   - change the default shell to zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 1> /dev/null
fi


echo "### Installing pure ###"
mkdir -p "$HOME/.zsh"

echo "Existing pure installation found, removing"
if [ -d $HOME/.zsh/pure ]
then
    rm -rf $HOME/.zsh/pure
fi

git clone --quiet https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

echo "### Copying custom zshrc to home directory"
cp ./zshrc.txt $HOME/.zshrc

sed -i '' "s,{{DEFAULT_SHELL_DIR}},$DEFAULT_SHELL_DIR,g" $HOME/.zshrc

echo "### Reloading terminal ###"
exec zsh

