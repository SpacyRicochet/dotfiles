# New Mac – Step by step

## Initial setup

* Go through the setup process.
* Do not migrate for a fresh experience.
* Log into iCloud with `me@brunoscheele.com`

## Install dotfiles

```
cd
git clone https://gitlab.com/spacyricochet/dotfiles.git .dotfiles
```

## Run 'New Mac' scripts

```
./dotfiles/scripts/macos_setup
./dotfiles/scripts/macos_defaults
defaults write com.apple.dock persistent-apps -array
```

## Final adjustments

* Add `~/Developer` to side bar
* Add screenshots dir to dock
  * Change view to ‘Fan’
  * Change sorting to ‘Date added’
