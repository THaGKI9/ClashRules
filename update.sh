rm -rf Rules
git clone -b master "https://thagki9:${GITHUB_TOKEN}@github.com/THaGKI9/ClashRules.git" Rules
cd Rules
git rm *

cd ..
python3 convert.py
cp -r .github ./Rules

cd Rules
git add -A
git commit -m "Update rules on $(date -u)"
git push origin master
