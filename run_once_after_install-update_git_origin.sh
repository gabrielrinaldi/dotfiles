#!/usr/bin/env bash

cd ~/.local/share/chezmoi || exit

echo "Updating the origin to allow push..."
# Get the current origin URL (HTTP)
current_url=$(git config --get remote.origin.url)

# Check if the URL is in HTTP format
if [[ $current_url =~ ^https://github.com/ ]]; then
  # Extract the repository owner and name from the HTTP URL
  repo_name=${current_url##*/}
  repo_name=${repo_name%.git}
  repo_owner=${current_url%/*}
  repo_owner=${repo_owner##*/}

  # Construct the new SSH URL
  new_url="git@github.com:$repo_owner/$repo_name.git"
else
  echo "Current URL is not in HTTP format"
  exit 0
fi

# Update the origin URL using git remote set-url
git remote set-url origin "$new_url"
