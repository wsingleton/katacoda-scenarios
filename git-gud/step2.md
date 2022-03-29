# Initializing a Repository in an Existing Directory

If you have a project directory that is currently not under version control and you want to start controlling it with Git, you first need to go to that project’s directory. In the editor type the following commands and note the output and results:

1. `cd study-cards`
2. `git init`
3. `git status`

The first command navigates us into the `study-cards` project directory. Once inside, the `git init` command initializes the directory as a Git repository by creating a `.git` directory within it. It is this directory that will contain all of the files necessary to maintain versions.