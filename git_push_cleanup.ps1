git config --global user.name "BoxedBrain"
git config --global user.email nessel@programcore.com

git rm --cached -r .

git checkout --orphan tempBranch
git add -A  # Add all files and commit them
git commit -m "Initial commit"
git branch -D master # Deletes the data-to-file branch
git branch -m master  # Rename the current branch to data-to-file
git push -f origin master  # Force push data-to-file branch to github
git gc --aggressive --prune=all     # remove the old files
