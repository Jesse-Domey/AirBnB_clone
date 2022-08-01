#!/bin/bash
echo " "
echo "--------------welcome to Git Banku--------------
"
                                           
function welcome 
{
echo "------------------------------------------------"
echo "Please select prefered action 
"
echo "1)Clone 
"
echo "2)Config
"
echo "3)Upload
"
echo "4)AlxUpload"
echo "------------------------------------------------"
}
welcome

function choose {
read -p "Action: " command
}
choose
while (($command > 4))
do
	echo " "
	echo "------ :( :( :( wrong input!!! ): ): ):------
	"
	welcome
	choose
done

function clone 
{
read -p "Username: " userName
read -p "git Key: " key
read -p "Repository: " repo
git clone https://$key@github.com/$userName/$repo.git
}

function config
{
read -p "Username: " userName
read -p "email: " email
git config user.name $userName
git config user.email $email
}

function upload
{
read -p "commit message: " msg
git add .
git commit -m "$msg"
git push
}

function alxUpload
{
	function list
	{
	  ls
	}
chmod u+x $(list)
read -p "commit message: " msg
git add .
git add --chmod=+x -- $(list)
git commit -m "$msg"
git push
}

function start 
{
if (( $command == 1 ))
then
	clone
elif (( $command == 2 ))
then
	config
elif (( $command == 3 ))
then
	upload
elif (( $command == 4 ))
then
	alxUpload

fi
}


start
