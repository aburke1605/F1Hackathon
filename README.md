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
$ cd F1Hackathon
```

## Conda environment

To create the conda environment, do:

```
$ chmod +x setup/setup.sh
$ setup/setup.sh
$ conda activate F1
```

From here you can open VS code by entering `code .` at the command prompt. The notebook can be run in VS code; make sure to select our environment as the interpreter (`Ctrl+Shift+P` then `Python: Select Interpreter` then choose `./setup/conda/envs/F1/bin/python`).\
Press `Ctrl+Enter` to run the notebook in VS code, you might be prompted to select our environment interpreter again.

#### Installing new packages

If you need to install something new, e.g. `scikit-learn`, make sure to do so in the F1 environment:

```
(F1) $ conda install my_package -c conda-forge
```

Then update the environment yaml:

```
(F1) $ conda env export > setup/env.yaml
```
and commit the new file.

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

## Data

For the code to work you'll have to download the [csv](https://www.kaggle.com/oracledevrel/formulaaihackathon2022?select=weather.csv) and [json](https://www.kaggle.com/oracledevrel/formulaaihackathon2022?select=weather.json) data and unzip them to a folder `data/` within the repo, but do not track these. They should be ignored by `.gitignore` if you've unzipped in the correct location:
```
$ unzip /path/to/weather.csv.zip -d F1Hackathon/data/
```
