$name=$args[0]
$reposurl=$args[1]
mkdir $name
cd $name
git clone $reposurl .
gh repo create salem84-eng/$name --private --source=. --push --remote=upstream
cd ..


# Per rimuovere un file dall'history
# git filter-branch --tree-filter "rm -rf 'Reports/Test DATASET/Test.pbix'" HEAD