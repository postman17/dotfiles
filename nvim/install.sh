# install nerd fonts
brew install --cask font-jetbrains-mono
brew install --cask font-hack-nerd-font


brew install nvim
brew install ripgrep
brew install lazygit

mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

ln -s $(pwd)/nvim ~/.config/nvim
