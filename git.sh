#!/bin/bash

# Commit the changes.
git add .
git commit -m "Initial commit for Task4_adminLinux."

# Push the changes to the remote repository.
git push -u origin Task4_adminLinux

# Merge the changes into the main branch.
git checkout main
git merge Task4_adminLinux
git push

