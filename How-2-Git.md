Cheat sheet for using the Git command line!

```• Stuff in ALL_CAPS needs to be filled in.
• Never work in your master branch, it should always be a copy of runelite/master
• Branch names are generally all-lowercase-with-dashes-between-words
• Commit messages should use present-tense imperative verbs. (Change, not Changed)

------------

Download a repo from github to work on it locally (From parent folder, new subfolder will be created)
You want to download *your* repo that you forked from the main project.
    git clone https://github.com/SOME_PERSON/SOME_PROJECT.git

Add remote (You should add the main project as a remote)
    git remote add REMOTE_NAME https://github.com/SOME_PERSON/SOME_PROJECT.git
    git remote add runelite https://github.com/runelite/runelite.git

Rename remote (Clone will automatically set up a remote called origin, I rename it to my github username)
    git remote rename OLD_REMOTE_NAME NEW_REMOTE_NAME
    git remote rename origin ShaunDreclin

Check remotes
    git remote -v

Delete remote
    git remote rm REMOTE_NAME

------------

Create a new branch (will copy from your current branch)
    git checkout -b BRANCH_NAME

Change current branch
    git checkout branch-name

Check branches
    git branch -v

Delete remote branch
    git push -d REMOTE_NAME BRANCH_NAME

Delete local branch
    git branch -d BRANCH_NAME

------------

Check the status of the current branch.
Files modified/added/removed will be in red, files in the staging area in green
    git status

Add a modified/added/removed file to the staging area
    git add FILE_NAME.txt
    git add *.txt

Add ALL modified/added/removed to the staging area (Capital A required)
    git add -A

Commit with a descriptive message saying what you did
    git commit -m "COMMIT_MESSAGE"

------------

Push branch to github
    git push remotename branchname

Pull branch from github
    git pull remotename branchname

Check differences in pull conflicts
    git diff HEAD

------------

Fetch branches from remote (do this before rebasing)
    git fetch REMOTE_NAME
    git fetch runelite

Switch to master branch
    git checkout master

Rebase changes from runelite to local copy
    git rebase REMOTE_NAME/BRANCH_NAME
    git rebase runelite/master

Rebase local branch from local master branch
    git rebase BRANCH_NAME
    git rebase master```