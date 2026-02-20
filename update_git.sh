#!/bin/sh

# Detect the default branch from the remote
branch=$(git remote show origin | grep 'HEAD branch' | awk '{print $NF}')

# Check if the branch variable is set
if [ -n "$branch" ]; then
    echo "Checking out $branch branch"
    git checkout "$branch"
    git pull origin "$branch"
else
    echo "Could not detect default branch from remote"
    exit 1
fi

# Get a list of all branches except the current one (main or master) and delete them
for b in $(git branch | grep -v "$branch"); do
    echo "Deleting branch $b"
    git branch -D $b
done
