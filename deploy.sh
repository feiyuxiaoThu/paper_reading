commit_statement="add"
commit_statement=$commit_statement$1

echo "git pull"
git pull
echo "git add *"
git add *
echo "git commit"
git commit -m "$commit_statement"
echo "git push"
git push git@github.com:feiyuxiaoThu/paper_reading.git
echo "mkdocs gh-deploy"
mkdocs gh-deploy
echo "finish"

