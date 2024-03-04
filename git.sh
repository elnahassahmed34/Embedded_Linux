#!/bin/bash

# Commit the changes.
git add .
git commit -m "Initial commit for Task6_adminLinux."

# Push the changes to the remote repository.
git push -u origin Task6_adminLinux

# Merge the changes into the main branch.
git checkout main
git merge Task6_adminLinux
git push

