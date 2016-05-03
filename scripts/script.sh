#!/bin/bash
source config.sh
export $http_proxy
export $httsp_proxy

echo "######### UPDATING SYSTEM #########"
apt-get -y update
if [ $? -eq 0 ]
then
    echo "########### UPDATING IS DONE ###########"
else
    echo "########### ERRO IN UPDATING SYSTEM ###########"
    exit
fi


####### GIT INSTALLATION #######
echo "######### INSTALLING GIT #########"
apt-get -y install git

if [ $? -eq 0 ]
then
    echo "########### GIT IS INSTALLED ##########"
else
    echo "########### ERRO IN INSTALLING GIT ###########"
    exit 1
fi

##### GIT CONFIGURATION ######
git config --global user.name $git_username
git config --global user.email $git_email
echo "######## GIT CONFIGURATION IS DONE ########"
#apt-get -y install emacs
if [ $? -eq 0 ]
then
    echo "######### EMACS IS INSTALLED ###########"
else
    echo "ERROR IN INSTALLING EMACS"
    echo "##### EXITING ######"
    exit 1
fi

