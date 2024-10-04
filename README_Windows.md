## 💻 Install Git and Bash

1. [Download](https://gitforwindows.org) git-bash.
2. Run the installation file:
   1. On the GNU Public License Page continue to the next page.
   2. Leave the installation path as is, then continue.
   3. Tick the checkboxes `check daily for Git for Windows updates` and `Add a Git Bash Profile to Windows Terminal` then continue.
   4. Leave the Start Menu Folder as is and continue.
   5. Choose `Use Vim` as your default editor and continue.
   6. Choose `Override the default branch name for new repositories` and choose the name "main". Then continue.
   7. Choose the default setting `Git from the command line and also from 3rd-party software` and continue.
   8. Choose `Use bundled OpenSSH` and continue.
   9. Choose `Use the OpenSSL library` and continue.
   10. Choose `Checkout Windows-style, commit Unix-style line endings` and continue.
   11. Choose `Use MinTTY` and continue.
   12. Choose `Fast-forward or merge` and continue.
   13. Choose `Git Credential Manager` and continue.
   14. On the page Configuring extra options leave the settings as is and continue.
   15. On the page Configuring experimental options leave the settings as is and continue.
   16. Wait for the installation to complete.
   17. You are done! 🎉
3. Open `git-bash`.
4. Right click on the openend window and select `options` from the dropdown menu.
5. On `text` -> `font` click `select...` and set the font size to `16px` or more.
6. On `keys` -> `shortcuts` check if the `ctrl+shift+letter shortcuts` are enabled.
7. Click `Apply` and close the options menu.
8. Check if you can copy/paste text whithin this bash-terminal by pressing `ctrl+shift+c` and `ctrl+shift+v`.

## ⚙️ Install Node.js

1. [Download](https://nodejs.org/) node.js and choose the `LTS` version (at this time 20.11.0).
2. Run the installation file:
   1. Accept the terms and conditions and continue.
   2. Leave the installation path as is and continue.
   3. Leave the Custom setup as is and continue.
   4. Leave the Tools for Native Modules as is and continue.
   5. Install node.js.
3. Restart `git-bash`.
4. Make sure that `node.js` and `npm` were successfully installed by entering the commands
   - `node -v` and
   - `npm -v`.
5. In the terminal, the respective versions of `node.js` and `npm` should be displayed, for example "v20.10.0" and "10.2.4".

## 🔐 Setup SSH for Github

### Install Node Packages, Setup Git Config and generate SSH Keys

1. In your git-bash terminal, execute the following command and follow the instructions:
   ```bash
   bash <(curl -s https://raw.githubusercontent.com/neuefische/web-setup/main/setup-windows.bash)
   ```
2. Enter your full name and email address.
3. Accept the default storage location for your ssh keys ('~/.ssh/id_ed25519') by pressing `enter`.
4. Skip setting up a passphrase by pressing `enter` twice when asked to enter a passphrase.
5. The public ssh key should now be printed to your terminal.

### Add the public SSH key to Github

1. Go to the [GitHub SSH Keys Settings Page](https://github.com/settings/keys) and click on `new SSH key`
2. Add a fitting title for your current computer (e.g. Windows Lenovo or Windows Desktop)

3. Copy the public key you got from the setup script (starting with "ssh-ed" and ending with your email) and paste it into the `key` input field. (you can always get the public key by using `cat ~/.ssh/id_ed25519.pub`)
4. Press `Add SSH key` and check that the key was added to your SSK Key list.
5. Check if the SSH connection works by cloning a repository from github:

```bash
git clone git@github.com:neuefische/web-test-ssh.git
```

6. If you are asked to add github.com to the trusted hosts enter "yes" and press `enter`.
7. If a new folder called "web-test-ssh" was created your SSH setup was successful! :tada:

## Only On-Site: Setting up ghcd Tool

We use the comand line tool `ghcd` for downloading the challenges. On site cohorts need to set it up with the instructions below. For remote cohorts it should work out of the box, but if you run into issues follow [these instructions](./github-token-setup.md).

## Setting up VS Code

1. [Download](https://code.visualstudio.com/) visual studio code.
2. Execute the installation file.
3. Follow [these instructions](./vscode-setup.md) to prepare VS Code for our bootcamp.
