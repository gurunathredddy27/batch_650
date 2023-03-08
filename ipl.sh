echo "Please select your favourite IPL team"
echo "Example :"
echo "CSK"
echo "GT"
echo "MI"
read teamName
#Variables
matchPlayed=14
won=0
lost=0
nrr=""
points=0

function errorHandler() {  #function one
echo "Please check your input , it is invalid :( "
}

function playOffTeams() {   #function two
if [[ $1 -ge 0 && $1 -le 4 ]]
then
echo "Team $2 is qualifying for Play-Off"
else
echo "Team $2 is not qualifying for Play-Off"
fi
}

function pointsTable() {
lost=$((matchPlayed-$2))
points=$(($2*2))
echo "You Selected $teamName"
echo "Secured Place $1"
echo "Played Matches $matchPlayed"
echo "Win $2 & Lose $lost"
echo "Runrate $3"
echo "Points $points"
playOffTeams $1 $teamName
}

#Setting a team based on Team Position In a Table
if [ $teamName == "CSK" ]
then
currentPosition=9
elif [ $teamName == "RCB" ]
then
currentPosition=4
elif [ $teamName == "MI" ]
then
currentPosition=10
else
 errorHandler  #calling errorHandler function
fi

#Assigning Details Based on Team
case $currentPosition in
10)
won=4
nrr="-0.503"
pointsTable $currentPosition $won $nrr #calling function
;;
9)
won=4
nrr="-0.203"
pointsTable $currentPosition $won $nrr
;;
4)
won=8
nrr="-0.253"
pointsTable $currentPosition $won $nrr
;;
*)
echo " "
;;
esac
