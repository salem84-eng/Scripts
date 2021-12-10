$name=$args[0]
$reposurl=$args[1]
mkdir $name
cd $name
git clone $reposurl .
gh repo create salem84-eng/$name --private --source=. --push --remote=upstream
cd ..