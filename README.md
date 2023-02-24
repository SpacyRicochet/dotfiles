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

## Set up Mail, Contacts and Calendar

### Fastmail

* Log in to [Fastmail](https://app.fastmail.com/login/)
	* Go to ['Settings > Account > Import & Setup'](https://app.fastmail.com/settings/setup/guide/mac/all)
	* Follow the instructions

### Google

* Open `System settings > Internet Accounts`
* Add any work-related accounts

## Set up other applications

* 1Password
	* Sign in
	* Install the 1Password extension for Safari from App Store
* Better
	* Install from App Store
* Fantastical
  * Enter 'Fantastical 2' licence key from the main menu item
	* Log in to any accounts as needed
	  * Personal (Fastmail)
		* Work-related (Google)
* Messages
	* Enable 'iMessage > Store messages in iCloud'
* Safari
	* Disable 'AutoFill > Username and passwords'
	* Disable 'AutoFill > Credit cards'
* Slack
  * Log in to all workspaces
* Xcodes
	* Sign in to Apple ID using `bruno@noodlewerk.com`
	* Install latest Xcode
* Xcode
	* Log in to developer accounts

## Set up other System Settings

* Lock Screen
	* Start Screen Saver after 5 minutes
	* Turn display off on battery after 10 minutes
	* Turn display off on power after 30 minutes
	* Require password after display turns off or screen saver starts after 5 minutes