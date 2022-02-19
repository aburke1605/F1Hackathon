# F1Hackathon

## Cloning repository

I recommend cloning with SSH to speed things up. To do so you'll need to generate an ssh key and add this to your github account.

In a terminal, do:

```
$ ssh-keygen -t ed25519 -C "descriptive comment"
```

You can leave the passphrase empty so you don't have to type it every time you pull or push to the remote. The descriptive comment might describe where you are working, e.g. locally on your laptop or on a cluster.

Then copy the contents of the output file, usually `~/.ssh/id_ed25519.pub`, and paste this into a new SSH key in your github account settings. Give it a descriptive title too.

Then clone this repo with ssh:

```
$ git clone git@github.com:aburke1605/F1Hackathon.git
```

## Conda environment

To create the conda environment, do:

```
$ chmod +x setup/setup.sh
$ setup/setup.sh
$ conda activate base
```

## Coding

Make sure to create your own branch to work on:

```
$ git checkout -b my_new_branch // new local branch
$ vim new_file.txt // create and edit some new file
$ git add new_file.txt
$ git commit new_file.txt -m "adding new file to do ____" // a message describing the changes in the commit
$ git push origin aburke/my_new_branch // try to use your_name/matches_local_branch
```

Never push to `origin master`!!

This will create a new branch from which you can create a merge request by clicking the link. Don't merge without discussing first!!
