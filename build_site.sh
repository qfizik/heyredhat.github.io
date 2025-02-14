echo "converting notebooks..."
jupyter nbconvert --to html '*.ipynb' --template=config/web.tpl
jupyter nbconvert --to html 'index.ipynb' --template='full.tpl'

echo "uploading..."
git add *
git commit -m "!"
git push origin master