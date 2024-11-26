# Visual Studio Code Setup

> 💡 Following these steps you will install some basic extensions for Visual Studio Code and do some required setup for the course.

1. Open **Visual Studio Code**
2. Open the Extensions Panel (<kbd>⇧</kbd><kbd>⌘</kbd><kbd>X</kbd>)
3. Install the following extensions
   - [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
   - [Live Preview](https://marketplace.visualstudio.com/items?itemName=ms-vscode.live-server)
   - [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
   - [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
4. Open the Visual Studio Code settings (<kbd>⌘</kbd><kbd>,</kbd>)
   - Search for "Default Formatter" and set to "Prettier - Code formatter"
   - Search for "Format On Save" and check the checkbox
   - > 💡 This will set up Visual Studio Code to automatically format your code on save using Prettier.
5.  Go to iTerm/Git Bash and type `code .` If Visual Studio Code opens then you can skip step 6. 

6. Open the command palette by pressing <kbd>⇧</kbd><kbd>⌘</kbd><kbd>P</kbd>.
   - Type "shell command" into the prompt.
   - Select _"Shell Command: Install 'code' command in PATH"_ and confirm the installation by pressing <kbd>Enter</kbd>.
   - > 💡 This allows you to open a folder in Visual Studio Code from the command line with the `code .` command.
7. (Only for Windows Users) Open the command palette by pressing <kbd>⇧</kbd><kbd>CTRL</kbd><kbd>P</kbd> or <kbd>F1</kbd>.
   - Type `Terminal: Select Default Profile` and choose `Git Bash`.
