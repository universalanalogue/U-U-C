#!/bin/bash
#see if you can find all of the usless uses of cat
graphics1a (){

cat <<< '#######################################################
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#                                                     #
#######################################################'

}

graphics1b (){

cat <<< '#######################################################
#                                                     #
#                 /\               /\                 #
#                /  \             /  \                #
#               / /\ \           / /\ \               #
#              / /  \ \         / /  \ \              #
#             / /____\ \_______/ /____\ \             #
#            /                           \            #
#          /                               \          #
#        /                                   \        #
#      /          ____           ____          \      #
#      |         (|  |)         (|  |)         |      #
#      |         (_\/_)         (_\/_)         |      #
#      |                                       |      #
#    ------------------    __    -----------------    #
#   -------------------    \/    ------------------   #
#    ------------------ ________ -----------------    #
#        \                                   /        #
#         \                                 /         #
#      ____\_______________________________/____      #
#     /                                         \     #
#    /                                           \    #
#   /                                             \   #
#######################################################'

}

graphics2a (){
cat <<< "#######################################################
# $last #
# $output #
#-----------------------------------------------------#
# Statement to check for a Useless Use of Cat:        #
#                                                     #
#######################################################"
}


printf "\ec"
graphics1a

while true ;do
printf "\e[24;1H"
output=$(printf '%-51s' "$output")
last=$(printf '%-51s' "$cat")
graphics2a
printf "\e[29;3H"
read cat


if [[ "$cat" == *"cat"* ]]
then
printf "\e[1;1H"
graphics1b
output=$(cat <<< "This is a Useless Use of Cat")
fi

if [[ "$cat" != *"cat"* ]]
then
printf "\e[1;1H"
graphics1b
output=$(cat <<< "This statement does not contain any cats")
fi

if [ -z "$cat" ]
then
printf "\e[1;H"
graphics1b
output=$(cat <<< "This statement is blank")
fi






done
