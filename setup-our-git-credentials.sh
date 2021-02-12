#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# Problem solving commands

# Read before using it.
# https://www.atlassian.com/git/tutorials/undoing-changes/git-reset
# git reset --hard orgin/master
# ONLY if you are very sure and no coworkers are on your github.

# Command that have helped in the past
# Force git to overwrite local files on pull - no merge
# git fetch all
# git push --set-upstream origin master
# git reset --hard orgin/master


#setting up git
#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config


echo
tput setaf 1
echo "################################################################"
echo "#####  Choose wisely - one time setup after clean install   ####"
echo "################################################################"
tput sgr0
echo
echo "Select the correct desktop"
echo
echo "0.  Do nothing"
echo "1.  Andres"
echo "2.  Acid"
echo "3.  Cencosud (Depends on 2)"
echo "Type the number..."

read CHOICE

case $CHOICE in

    0 )
      echo
      echo "########################################"
      echo "We did nothing as per your request"
      echo "########################################"
      echo
      ;;

    1 )
      sudo git config --system core.editor nano
      git config --global pull.rebase false
      git config --global push.default simple
      git config --global user.name "Andres Vargas"
      git config --global user.email "avargasp87@gmail.com"
      git config --global user.signingkey 30F2B65B9246B6CA
      git config --global credential.helper cache
      git config --global credential.helper 'cache --timeout=32000'
      git config --global commit.gpgsign true
      ;;
    2 )
      sudo git config --system core.editor nano
      git config --global pull.rebase false
      git config --global push.default simple
      git config --global user.name "Andres Vargas"
      git config --global user.email "avargas@acid.cl"
      git config --global user.signingkey 51297874C9925615
      git config --global credential.helper cache
      git config --global credential.helper 'cache --timeout=32000'
      git config --global commit.gpgsign true
      git config --global includeif.gitdir:~/Develop/cencosud/.path=~/Develop/cencosud/.gitconfig
      ;;
    3 )
      #Directory /Develop/cencosud/
      git config -f /Develop/cencosud/.gitconfig user.email "andres.vargaspanza@externos-cl.cencosud.com"
      git config -f /Develop/cencosud/.gitconfig user.signingkey 6E521BD598619496
      ;;
    4 )
      echo
      ;;
    5 )
      echo
      ;;
    6 )
      echo
      ;;
    7 )
      echo
      ;;
    8 )
      echo
      ;;
    9 )
      echo
      ;;
    10 )
      echo
      ;;
    * )
      echo "#################################"
      echo "Choose the correct number"
      echo "#################################"
      ;;
esac

echo "###########################################################"
echo "Github credentials have been set"
echo "Delete the ~/.cache/git folder if you made a mistake or"
echo "if you want to switch to your personal github"
echo "###########################################################"

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
