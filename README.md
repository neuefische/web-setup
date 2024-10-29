# Setup macOS using zsh

This is a collection of scripts to setup your macOS.

They are designed for the neue fische web development course.

## Instructions

You should have the latest macOS installed. To make sure, click on the apple logo at the top left, go to "About this Mac" and click "Software Update". Install any missing updates.

Find and run the program "Terminal". This is a program that allows you to run commands on your computer. You can press <kbd>⌘</kbd><kbd>Space</kbd> to open Spotlight. Type in the program's name and press <kbd>Enter</kbd>.

Copy the command you want to run and paste it into the Terminal.  
Run it by pressing <kbd>Enter</kbd>.

> 💡 In case of any errors, carefully read the error text and google for help. Ask a coach for help if you can't find a solution with your own research.

### Which commands should I run?

Begin with the [_General Setup_](#-general-setup).

The [_Setting up git and GitHub_](#-setting-up-git-and-github) script will be used once you'll need to work with git in the command line.

> 💡 You can check the "What does this do?" sections to learn what each script does in detail.

## 💻 General Setup

Installs desktop applications, command line tools and sets up the shell.

> 💡 Enter your macOS users password if you're asked for it and confirm with <kbd>Enter</kbd>. You won't see any characters while typing, but it's still working.
>
> If you are asked to enable fuzzy auto-completion, enable key bindings and update shell configuration files confirm by pressing <kbd>Enter</kbd>.

```sh
zsh <(curl -s https://raw.githubusercontent.com/neuefische/web-setup/main/setup)
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

The script will use npm to install the following packages globally:

- [eslint](https://eslint.org/) is a tool for identifying and reporting on patterns found in ECMAScript/JavaScript code

The script will copy [zsh configuration files](/configs) from this repository to configure zsh. It will also setup [shell-integration for iTerm](https://iterm2.com/documentation-shell-integration.html).

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
zsh <(curl -s https://raw.githubusercontent.com/neuefische/web-setup/main/setup-git)
```

<details>
<summary>What does this do?</summary>

This command will download the [`setup-git` script](/setup-git) from GitHub and run it on your computer.

The script will setup git and create a new ssh key for GitHub. It will also add the key to your GitHub account using the GitHub CLI.

</details>

## Only On-Site: Setting up ghcd Tool

We use the comand line tool `ghcd` for downloading the challenges. On site cohorts need to set it up with the instructions below. For remote cohorts it should work out of the box, but if you run into issues follow [these instructions](./github-token-setup.md).

## Setting up VS Code

Follow [these instructions](./vscode-setup.md) to prepare VS Code for our bootcamp.

## 🎬 Video showing the setup

A video showing the setup process can be found on YouTube:

[<img src="https://img.youtube.com/vi/oSbdusMN0bA/maxresdefault.jpg" width="480" alt="Video Thumbnail – Mac Setup 101"
/>](https://youtu.be/oSbdusMN0bA)
