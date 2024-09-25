#!/bin/sh

# Initialize branch variable
branch=""

# Check if 'master' branch exists
if git show-ref --verify --quiet refs/heads/master; then
    branch="master"
# Check if 'main' branch exists
elif git show-ref --verify --quiet refs/heads/main; then
    branch="main"
fi

# Check if the branch variable is set
if [ -n "$branch" ]; then
    echo "Checking out $branch branch"
    git checkout "$branch"
    git pull origin "$branch"
else
    echo "Neither 'master' nor 'main' branch exists"
    exit 1
fi

# Get a list of all branches except the current one (main or master) and delete them
for b in $(git branch | grep -v "$branch"); do
    echo "Deleting branch $b"
    git branch -D $b
done
