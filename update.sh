
git add maven
git commit -m "updated"

./update-directory-indeces.sh 
git add maven
git commit -m "update folder indices"

git status | grep delete | awk '{print }' | xargs git rm
git add maven/.index
git commit -m "update nexus index"

git push origin