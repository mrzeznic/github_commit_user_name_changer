# github_commit_user_name_changer

Script helps to change the name and the email in already pushed commits based on given email adress.

Before running this script, you'll need:

The old email address that appears in the author/committer fields that you want to change
The correct name and email address that you would like such commits to be attributed to
Open Terminal.

Create a fresh, bare clone of your repository:

```bash
$ git clone --bare https://github.com/user/repo.git
$ cd repo.git
```

Open [config.sh](config.sh) file, replacing the following variables in double quotes based on the information you gathered:

OLD_EMAIL \
CORRECT_NAME \
CORRECT_EMAIL

Run the [script](run_name_changer.sh).

```bash
$ bash run_name_changer.sh
```

Review the new Git history for errors.

</br>

---

# BASED ON HELP GITHUB ARTICLE 
(https://help.github.com/en/articles/changing-author-info)

</br>
</br>
</br>
</br>

---
---
TODO: 
- [ ] save console output to file, create historization file (https://askubuntu.com/questions/420981/how-do-i-save-terminal-output-to-a-file)

- [ ]
