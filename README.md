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
./.dotfiles/scripts/macos_setup
./.dotfiles/scripts/macos_defaults
defaults write com.apple.dock persistent-apps -array
```

## Some other stuff

* Add `~/Developer` to side bar
* Add screenshots dir to dock
	* Change view to ‘Fan’
	* Change sorting to ‘Date added’

## Set up Nova

* Open Nova
* Install command line tools from 'Preferences > Tools > Command Line Tool > Install'
* Allow notifications

## Setup Github.com

### Create new SSH key

* Generate SSH key and create and open config file
  * Use 1Password to generate a passphrase
	* Use a nice e-mail that explains the use and computer

```
ssh-keygen -t ed25519 -C "your@email.com"
eval "$(ssh-agent -s)"
touch ~/.ssh/config
nova ~/.ssh/config
```

* Copy the following in the empty

```
Host github.com
	AddKeysToAgent yes
	UseKeychain yes
	IdentityFile ~/.ssh/id_ed25519
```

* Start the SSH-Agent and add the key to it

```
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

### Add SSH key to Github.com

1. Log into Github.com
2. Go to ['Settings > SSH and GPG keys'](https://github.com/settings/keys)
3. Tap 'New SSH key' to get started
  1. Add the name of the key as the 'Title'.
  2. `pbcopy < ~/.ssh/id_ed25519.pub`

### Add Github account to Tower.app

1. Open Tower.app
2. Add service account Github
  1. Use OAuth access token

## Set up applications

* Safari
	* Disable 'AutoFill > Username and passwords'
	* Disable 'AutoFill > Credit cards'
* 1Password
	* Sign in
	* Install the 1Password extension for Safari from App Store
* Better
	* Install from App Store
* Messages
	* Enable 'iMessage > Store messages in iCloud'
* Xcode
	* Open Xcodes.app
	* Sign in to Apple ID using `bruno@noodlewerk.com`
	* Install latest Xcode


