## Git Push Rejcted fix

Problem:
Git push rejected because remote had commits not present locally.

Solution:

git pull origin main --rebase
git push origin main

Commands used:
git remote remove origin - This removes the current GitHub repository connection.

git remote add origin <repo-url> - Add New Remote Repo

git pull origin main --rebase - Pulls the remote changes and place commits on top of them 

git push origin main  - This sends commit to github

## When switching repos, you can change the remote URL without removinh it 

git remote set-url origin <new-url> - This helps to switch between repos 
