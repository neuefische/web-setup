# Setup macOS using zsh

This is a collection of scripts to setup your macOS.

They are designed for the neue fische web development course.

## Instructions

You should have the latest macOS installed. To make sure, click on the apple logo at the top left, go to "About this Mac" and click "Software Update". Install any missing updates.

Find and run the program "Terminal". This is a program that allows you to run commands on your computer.

Copy the command you want to run and paste it into the Terminal.  
Run it by pressing <kbd>Enter</kbd>.

> 💡 In case of any errors, carefully read the error text and google for help. Ask a coach for help.

### Which commands should I run?

Begin with the [_General Setup_](#-general-setup). You can optionally run the [_Setting nicer macOS Configurations_](#-setting-nicer-macos-configurations) script at any time.

The [_Setting up git and GitHub_](#-setting-up-git-and-github) script will be used once you'll need to work with git in the command line.

The [_Setting up MongoDB_](#-setting-up-mongodb) script will be used once you'll need to work with MongoDB.

> 💡 You can check the "What does this do?" sections to learn what each script does in detail.

## 💻 General Setup

Installs desktop applications, command line tools and sets up the shell.

> 💡 Enter your macOS users password if you're asked for it and confirm with <kbd>Enter</kbd>. You won't see any characters while typing, but it's still working.
>
> If you are asked to enable fuzzy auto-completion, enable key bindings and update shell configuration files confirm by pressing <kbd>Enter</kbd>.

```sh
zsh <(curl -s https://raw.githubusercontent.com/neuefische/zsh-setup/main/setup)
```

<details>
<summary>What does this do?</summary>

This command will download the [`setup` script](/setup) from GitHub and run it on your computer.

The script will install [Homebrew](https://brew.sh/) which is a package manager for macOS.

Using Homebrew it will install the following command line tools:

- [gh](https://cli.github.com/) is a command line tool for GitHub
- [git](https://git-scm.com/) is a version control system
- [antigen](https://antigen.sharats.me/) is a plugin manager for zsh (the shell)
- [zsh-completions](https://github.com/zsh-users/zsh-completions#readme) is a collection of additional auto completion definitions for zsh
- [exa](https://the.exa.website/) is a modern replacement for ls (list files)
- [tree](http://mama.indstate.edu/users/ice/tree/) is a recursive directory listing command that produces a depth indented listing of files
- [fnm](https://github.com/Schniz/fnm#readme) is a fast and simple Node.js version manager

It will also install the following desktop applications using Homebrew:

- [iTerm2](https://iterm2.com/) is a terminal emulator for macOS
- [Visual Studio Code](https://code.visualstudio.com/) is a code editor
- [Rectangle](https://rectangleapp.com/) is a window manager for macOS
- [QuickLook JSON](http://www.sagtau.com/quicklookjson.html) is a quicklook plugin for JSON files
- [Firefox Developer Edition](https://www.mozilla.org/en-US/firefox/developer/) is a web browser

Using fnm the script will install the latest [LTS](https://github.com/nodejs/release#release-schedule) version of [Node.js](https://nodejs.org/en/) a JavaScript runtime.

The script will copy [zsh configuration files](/config) from this repository to configure zsh. It will also setup [shell-integration for iTerm](https://iterm2.com/documentation-shell-integration.html).

</details>

## 🍏 Setting nicer macOS Configurations

_This script is optional, but it might make your macOS experience nicer._ 🤓

Some of the default macOS settings are not very optimized for productivity. This script will change some of them.

> 💡 Enter your macOS users password if you're asked for it and confirm with <kbd>Enter</kbd>. You won't see any characters while typing, but it's still working.

```sh
zsh <(curl -s https://raw.githubusercontent.com/neuefische/zsh-setup/main/setup-macos)
```

<details>
<summary>What does this do?</summary>

This command will download the [`setup-macos` script](/setup-macos) from GitHub and run it on your computer.

The script will change the following macOS settings:

- disable disk eject warning
- set dock autohide timings to feel more responsive
- make hidden apps transparent in the dock
- remove recent apps from the dock
- set key repeat to feel more responsive
- set show all files in Finder (including hidden ones)
- make home folder the default location in Finder
- disable automatic spelling correction

> 💡 If you want only some of the settings to be applied, copy the relevant lines from the [setup script](/setup-macos) and run them in the Terminal.
>
> Don't forget to run `killall Dock && killall Finder` (or restart you computer) to apply the changes.

</details>

## 🐙 Setting up git and GitHub

_This script will be used once you'll need to work with git in the command line._

Sets up git and connects it to GitHub.

> 💡 Please enter your name and email address and confirm each with <kbd>Enter</kbd>.
>
> Confirm the defaults by pressing <kbd>Enter</kbd> when asked about which file to save key and your passphrase.
>
> Choose **`ssh`** as your preferred connection method. Login and authenticate to GitHub using the browser. (The device code is found in the Terminal.)

```sh
zsh <(curl -s https://raw.githubusercontent.com/neuefische/zsh-setup/main/setup-git)
```

<details>
<summary>What does this do?</summary>

This command will download the [`setup-git` script](/setup-git) from GitHub and run it on your computer.

The script will setup git and create a new ssh key for GitHub. It will also add the key to your GitHub account using the GitHub CLI.

</details>

## 🍃 Setting up MongoDB

_This script will be used once you'll need to work with MongoDB._

Installs MongoDB, MongoDB Compass and starts the MongoDB background service.

```sh
zsh <(curl -s https://raw.githubusercontent.com/neuefische/zsh-setup/main/setup-mongodb)
```

<details>
<summary>What does this do?</summary>

This command will download the [`setup-mongodb` script](/setup-mongodb) from GitHub and run it on your computer.

The script will use Homebrew to install [MongoDB](https://www.mongodb.com/) and [MongoDB Compass](https://www.mongodb.com/products/compass).

It will also start the MongoDB service.

</details>
