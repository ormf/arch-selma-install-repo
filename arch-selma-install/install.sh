#!/bin/bash
sudo pacman -S --needed firefox emacs snd sbcl fftw portmidi w3m supercollider lilypond qsynth qtractor soundfont-fluid
sudo mkdir -p /usr/local/share/emacs/site-lisp
sudo mkdir -p /usr/local/share/doc
mkdir -p $HOME/.snd.d
mkdir -p $HOME/.emacs.d
mkdir -p $HOME/.config/rncbc.org/
echo "Copying dot files into Home-Directory..."
cp -v into-home/.incudinerc $HOME
cp -v into-home/.sbclrc $HOME
cp -v into-home/.fomus $HOME
cp -v into-home/.snd_prefs_s7 $HOME/
cp -v into-home/Qsynth.conf $HOME/.config/rncbc.org/

sudo mkdir -p /usr/local/share/emacs/site-lisp
sudo cp -fv emacs-related/extra-pkgs/* /usr/local/share/emacs/site-lisp

if [ -f $HOME/.emacs.d/init.el ]
then
    echo "Backing up ~/.emacs.d/init.el to ~/emacs.d/init.el.orig"
    mv $HOME/.emacs.d/init.el{,.orig};
fi
echo "Installing emacs-packages..."
cp emacs-related/init-base.el ~/.emacs.d/init.el
cd scripts
./emacs-pkg-install.sh company
./emacs-pkg-install.sh el-swank-fuzzy
./emacs-pkg-install.sh ido-ubiquitous
./emacs-pkg-install.sh paredit
./emacs-pkg-install.sh rainbow-delimiters
./emacs-pkg-install.sh w3m
cd ..
echo "Copying emacs init file..."
cp -fv emacs-related/init.el ~/.emacs.d/init.el

echo "Copying cltl2 to /usr/local/share/doc..."
sudo cp -Rv ./doc/cltl /usr/local/share/doc
echo "Installing quicklisp..."
cd scripts && ./quicklisp-install.sh
echo "Copying quicklisp packages to ~/quicklisp/local-projects..."
cd ..
cp -rv cl-pkgs/* ~/quicklisp/local-projects/
cd scripts
sbcl --load "cm-install.lisp"
cd ..
