#!/bin/bash

sudo pacman -Scc --noconfirm
if [[ -n $(pacman -Qtdq) ]]; then
    sudo pacman -R $(pacman -Qtdq) --noconfirm
fi
rm -rf ~/.cache
echo "Done!"
