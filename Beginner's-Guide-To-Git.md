For a more general guide, see [this page](http://rogerdudler.github.io/git-guide/).

#### Things to remember

* Keep work outside of `master`. Work should take place in topic branches, and have a pull request made to bring it into RuneLite's `master` branch.
* Branch names are generally all-lowercase-with-dashes-between-words.
* Commit messages should use present-tense imperative verbs. (e.g. "change x to y", not "changed x to y").

## Workflow

### Fork runelite if you haven't

Click the "fork" button in the upper right of the page. That will create a copy of the project, just for you, under your username.

### Download your fork if you haven't

Execute, in the directory you want to work within:

    git clone https://github.com/YOUR_USERNAME/runelite.git
    cd runelite/

That will create a "runelite" directory in `some/directory/`. If you are using IntelliJ IDEA, follow [this guide](https://github.com/runelite/runelite/wiki/Building-with-IntelliJ-IDEA) to get the project building.

### Add the `upstream` remote if you haven't

Execute, in the "runelite" directory you created earlier:

    git remote add upstream https://github.com/runelite/runelite.git

That will add a remote (a place you can access that has a copy of the repository) to your local copy of RuneLite.

### Update your local copy

If RuneLite updates, you can pull down the latest changes to your `master` branch by running:

    git pull upstream master

Which will get the latest copy of the code for RuneLite. Merge it into your own `master` by running

    git checkout master
    git merge upstream/master

If there are merge conflicts, consult the document linked above or ask on Discord.

### Create a branch to work in

When you're ready to begin work on a new feature, pull down the latest copy of master as above and make sure you're in the `master` branch.

Run:

    git checkout -b some-feature-branch-name

That command will branch (create a copy of the code at the current branch and give it a name) and checkout (switch to working on) a new feature branch for you to work in.

#### Change the active branch

    git checkout some-branch-name

#### List branches

    git branch -v

#### Delete a branch

    git branch -d some-branch-name

If the command won't complete, and you are *100% certain* you do not want that branch anymore, run:

    git branch -D some-branch-name

To forcibly delete the branch.

To delete a branch on Github in your fork, run:

    git push -d origin some-branch-name

### Save your work

Once you've done some work in the current branch, you can run:

    git status

To check the status of the current branch. Files modified/added/removed will be in red, while files in the staging area in green.

Add a modified/added/removed file to the staging area

    git add filename.extension
    git add *
    git add .

When you commit, all staged files are added to a commit which contains all the differences between the files as they were before, and how they are with your changes. Any unstaged files will not have the differences saved.

Commit with a descriptive message saying what you did:

    git commit

#### Warning

`git commit` will probably launch `vi`, the *vi*sual editor. If you do not know how to use `vi`, here is a very brief guide. Alternatively, you can run `git commit -m "commit message here"` to write a commit message without entering the editor.

`vi` is a modal editor. By default, the editor is in *command mode*. If you try to type in it, it will almost certainly not do what you expect. To enter *insert mode*, which is not entirely unlike other text editor's default states, press `i`. You will see the bottom line of text change to `--INSERT MODE--`.

Now that you are in insert mode, type your commit message. Traditionally, the first line is a brief summary of what changes you made, then an empty line, then some text describing the what, how, or why of your change. For example,

    Clarified beginner's guide to git
    
    Added steps, separated sections, and added a section on vi.
    Unsure if the vi section is clear, or if it'll just be confusing.
    Some of the sections might be too technical or too high level; I
    added a link at the top to another guide if users find this one
    confusing.

While you are editing your message, the editor will add line breaks on its own. Let it. Once you are done, press escape to change back to command mode, then type `:wq` and press enter to finish writing your commit message. Your code will be committed locally.

If you ever get lost in `vi` and aren't sure what state you're in, press escape a bunch and then type `:q!` and press enter to quit without saving. You will have to commit again to start the process once more.

### Put your work online

To get your work back onto your Github, commit your work and run:

    git push origin some-branch-name

Once your work is online, you can make a pull request to bring it back into RuneLite.