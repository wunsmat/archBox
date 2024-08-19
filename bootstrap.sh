#!/usr/bin/env bash

pacman --noconfirm -Syu
pacman --noconfirm -S --needed - < /vagrant/pkglist.txt

ln -fs /vagrant/.zshrc /home/vagrant/.zshrc
ln -fs /vagrant/.zprofile /home/vagrant/.zprofile
ln -fs -r /vagrant/.config /home/vagrant/.config

chsh --shell /bin/zsh vagrant
