git pull origin master

if [ "$#" -lt 1 ]; then
    exit
fi

read -t 60 -p "请输入本次提交的说明：" commit

while [ $# -ne 0 ]
do
git add $1
shift
done

git commit -m "$commit"

git push origin master
