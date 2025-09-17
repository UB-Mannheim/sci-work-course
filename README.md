# Test Repository for Course "Scientific Writing and Bibliographic Research" @ Uni Mannheim

## Git/GitHub Exercise

1. **Prerequisites:**
    * [Register](https://github.com/join) for a GitHub account (if you not already have one)
    * [Install Git](https://docs.github.com/en/get-started/git-basics/set-up-git) (NOT GitHub Desktop) on your computer
    * Set up Git to connect to GitHub:
        * [Using HTTPS](https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories#cloning-a-repository-using-https) (easier, but you have to enter your username and password every time you push changes)
        * [Using SSH](https://docs.github.com/en/get-started/getting-started-with-git/managing-remote-repositories#cloning-a-repository-using-ssh) (more complicated, but you only have to set it up once)
    * Configure Git to use your [name](https://docs.github.com/en/get-started/git-basics/setting-your-username-in-git) and [email address](https://docs.github.com/en/account-and-profile/how-tos/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address#setting-your-email-address-for-every-repository-on-your-computer)

2. **Task: Git and GitHub workflow (basic)**
    * [Fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo) this repository
    * [Clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) your newly forked repository to your computer
    * ([Create](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-and-deleting-branches-within-your-repository) a new branch, _optional_)
    * Find an unaltered text file [`data/birth-dates/`](./data/birth-dates), i.e. one which still has some missing information (`????` instead of a year)
    * Look up the birth date on Wikipedia and replace the `????` with the correct year
    * Commit and push your changes to your fork:
        * `git add`
        * `git commit`
        * `git push`
    * [Send us a pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) on GitHub (and check back in a couple of days to see if there has been any activities associated with it)
    * 🎉 Done! You have gotten your first pull request accepted! 🎉

See the exercise materials for more information. You can now return to ILIAS and continue with the other tasks. If you want to go a bit further there is a more advanced but _optional_ exercise as well.

3. **Task: Git and GitHub workflow (advanced, _optional_)**
    * Fork PalMA from https://github.com/UB-Mannheim/PalMA
    * Clone your newly forked repository to your computer
    * Check that you have configured username and email in Git
    * Create a new branch
        * a) Add a new language in directory `locale` (copy directory of English version and paste it to a new directory).
        * b) Edit an existing language in the directory `locale`
    * Translate some texts and adjust the header
    * commit and **sign off** your changes, than push them to your fork
    * Send us a pull request on GitHub
    * 🎉 Done! You will be immortalized in the changelog if you complete this part with a substantial contribution! 🎉

## Documentation for LaTeX installation

You find detailed documentation about the LaTeX installation in the folder [doc](./doc).

## FAQ

Some frequently asked questions together with their answers from the course are collected in the document [doc/faq.md](./doc/faq.md).
