#!/bin/bash

# Make sure there is a Git repository:
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "ERROR: No Git repositories found."
    exit 1
fi

# Extract the number after the word "Commit":
commit_number=$(git log -1 --pretty=%B | sed -E 's/.*Commit ([0-9]+).*/\1/')

# If not found, assign zero:
if [[ -z "$commit_number" ]]; then
	commit_number=0
fi

echo "$commit_number"

echo $commit_number
((commit_number++))
message="Commit ${commit_number} ($(date +%F_%T))"
git add . && git commit -m "$message" && git push && echo "Done"