# dotfiles

http://dev.classmethod.jp/etc/github-homesick-dotfiles/

```
gem install homesick
rbenv rehash
homesick clone sue738/dotfiles
cd ~/.homesick/repos/dotfiles/
git submodule update --init
homesick symlink dotfiles
```

# Brewfile

```
cd ~/.homesick/repos/dotfiles/home
brew tap homebrew/boneyard
brew bundle
```
