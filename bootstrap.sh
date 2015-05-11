#! /bin/bash
pacman -S --noconfirm git
cd $HOME
git clone git@github.com:evandbrown/arch-bootstrap-thinkpad.git
cd arch-bootstrap-thinkpad
./install.sh
