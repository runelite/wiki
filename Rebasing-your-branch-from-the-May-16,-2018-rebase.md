## Introduction
Due to the rebase of the master branch on May 16, 2018 to follow [Jagex's request](http://services.runescape.com/m=news/third-party-client-update?oldschool=1), all branches will need to be rebased to the new code. If you forked RuneLite after May 16, 2018, you do not need to follow this guide.

Not many people are used to rebasing their branch on top of *another rebased branch*, which is why this was made.

The first way is just to just manually copy your work to the new code base. The other option is to do the "git way" and rebase your branch, which this tutorial will try to go over.

For example, your pull request may look like this:
![image](https://user-images.githubusercontent.com/2388657/40209508-a6e6bef8-5a0d-11e8-81ce-83d741d8ada9.png)

## Assumptions
* You have followed the [[Beginner's Guide To Git]].
* You have your branches already pushed to GitHub! If not, do so now.

## Guide
The following process will delete any unsaved code. You should backup your folder before doing this.

### Updating upstream/master
First, reset the upstream master to the current version.
```
git fetch upstream
git checkout upstream/master
git reset --hard upstream/master
```

### Updating our branch
Now it's time to update our branches.
```
git checkout my-awesome-feature
```
Run `git log` and COUNT the number of commits YOU made until the previous version of master. Typically you will see a "merge pull request" type of commit.

In most cases you will have have one commit.

IF you have only one commit that you want rebased:
```
git rebase --onto upstream/master my-awesome-feature~ my-awesome-feature # notice the "~"
```
IF you have more than one commit that you want rebased:
```
git rebase --onto upstream/master my-awesome-feature~3 my-awesome-feature # rebase 3 commits on top of master
```

### Testing
After running this, do a `git log` and check if the history looks good.

Now, make sure your rebase worked by actually testing it in RuneLite!

If it didn't go as well as planned, you can reset your branch to what you have already have on GitHub by running `git reset --hard origin/my-awesome-feature`.

### Pushing
If it did go well, it's time to force push your branch with `git push --force`. Now if you look at your PR, it should be back to normal.

### Cleaning up your local history
In order to remove all dangling branches after you done rebasing all your pull requests, to cleanup all branches that you dont care about, download [this script](http://ix.io/1aJM) and save it as `git-branch-cleanup`. Then, navigate to your repository and run

```bash
git checkout master
git-branch-cleanup -D
```

This info mostly came from a [stackoverflow](https://stackoverflow.com/a/31882353) post.

If there are any mistakes, or any way to make this easier, please update this wiki!
