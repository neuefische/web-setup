# Generate Github Access Token

You will soon need to download your tasks and challenges to your local computer. For this, you need to generate a token on github.com and copy add it on your local computer. Then, it will be used when copying the tasks/challenges to your local computer.

## 1. Generate a token on GitHub.com

- Go to github.com and login with your username
- on the top right click on your profile picture and select `settings`
- In the `settings` section scroll you need to select the `developer settings` on the left navigation on the very bottom
- In the `developer settings` go on the left side to `Personal access tokens`. Select `Tokens (classic)`
- Click on the top `Generate new token` -> `Generate new token (classic)`
  - Give the token a note like `token_for_accessing_repos`
  - select only the checkbox with `repo`
  - select an `expiration` of 90 days
  - click on the bottom `Generate token`
- Copy the generated token

## 2. Add the generated token to your local computer

1. In your terminal, go to your home directory by running `cd $HOME`
2. Append the token to your `.zshrc`/`.bash_profile` config file by using this command:

   MacOS:

   ```bash
   echo export GITHUB_TOKEN="YOUR_COPIED_TOKEN" >> ~/.zshrc
   ```

   Windows:

   ```bash
   echo 'export GITHUB_TOKEN="YOUR_COPIED_TOKEN"' >> ~/.bash_profile
   ```

   Please replace "YOUR_COPIED_TOKEN" with the token that you copied from github.com.

3. Restart your shell!

## 3. Test the Setup

To test if your token is working, execute the following in the terminal

```bash
npx ghcd@latest spicedacademy/fs-web-exercises/tree/main/sessions/computer-setup/is-token-correct
```

[https://github.com/spiced-academy/fs-web-exercises/tree/main/sessions/computer-setup/is-token-correct](https://github.com/spiced-academy/fs-web-exercises/tree/main/sessions/computer-setup/is-token-correct)

If the download was successful and a folder called `computer-setup_is-toke-correct` was created, your setup works as expected!

Finally, remove the downloaded folder, we don't need it anymore:

```bash
rm -rf computer-setup_is-toke-correct
```
