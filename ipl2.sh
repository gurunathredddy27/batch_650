echo "Please select your favourite IPL team"
echo "Example :"
echo "CSK"
echo "GT"
echo "MI"
read teamName
#Array
rcbTeam=("Virat" "Duplessis" "Siraj" "Maxwell")
miTeam=("Pollard" "Ishan" "Rohit" "Bumrah")
rrTeam=("Butler" "Boult" "Sanju" "Parag")
#Dictionary
declare -A cskTeam
cskTeam[batsman]="Suryakumar"
cskTeam[bowler]="Jadeja"
cskTeam[captain]="Dhoni"
cskTeam[allrounder]="Moenali"
#Variables
matchPlayed=14
won=0
lost=0
nrr=""
points=0
function errorHandler() {
echo "Please check your input , it is invalid :( "
}
#Step 4::
function playOffTeams() {
if [[ $1 -ge 0 && $1 -le 4 ]]
then
echo "Team $2 is qualifying for Play-Off"
else
echo "Team $2 is not qualifying for Play-Off"
fi
}
#Step 6 ::
function rolesAndResponsibilityByPlayer() {
echo "$3 is a $1 of team $2"
}
#Step 5 ::
function playersByTeam() {
if [ $1 == "RCB" ]
then
for player in ${rcbTeam[*]}
do
if [ $player == "Maxwell" ]
then
rolesAndResponsibilityByPlayer "Allrounder" $1 $player
elif [ $player == "Virat" ]
then
rolesAndResponsibilityByPlayer "Batsman" $1 $player
elif [ $player == "Duplessis" ]
then
rolesAndResponsibilityByPlayer "Captain" $1 $player
else
rolesAndResponsibilityByPlayer "Bowler" $1 $player
fi
done
elif [ $1 == "MI" ]
then
for player in ${miTeam[*]}
do
if [ $player == "Pollard" ]
then
rolesAndResponsibilityByPlayer "Allrounder" $1 $player
elif [ $player == "Ishan" ]
then
rolesAndResponsibilityByPlayer "Batsman" $1 $player
elif [ $player == "Rohit" ]
then
rolesAndResponsibilityByPlayer "Captain" $1 $player
else
rolesAndResponsibilityByPlayer "Bowler" $1 $player
fi
done
elif [ $1 == "CSK" ]
then
for player in ${cskTeam[*]}
do
if [ $player == "Jadeja" ]
then
rolesAndResponsibilityByPlayer "Allrounder" $1 $player
elif [ $player == "Suryakumar" ]
then
rolesAndResponsibilityByPlayer "Batsman" $1 $player
elif [ $player == "Dhoni" ]
then
rolesAndResponsibilityByPlayer "Captain" $1 $player
else
rolesAndResponsibilityByPlayer "Bowler" $1 $player
fi
done

elif [ $1 == "rr" ]
then
for player in ${rrTeam[*]}
do
if [ $player == "Sanju" ]
then
rolesAndResponsibilityByPlayer "Allrounder" $1 $player
elif [ $player == "Parag" ]
then
rolesAndResponsibilityByPlayer "Batsman" $1 $player
elif [ $player == "Sanju" ]
then
rolesAndResponsibilityByPlayer "Captain" $1 $player
else
rolesAndResponsibilityByPlayer "Bowler" $1 $player
fi
done

else
echo ""
fi
}
#Step 3::
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
playersByTeam $teamName

}
#Setting a team based on Team Position In a Table
#Step 1::
if [ $teamName == "CSK" ]
then
currentPosition=9
elif [ $teamName == "RCB" ]
then
currentPosition=4
elif [ $teamName == "MI" ]
then
currentPosition=10
elif [ $teamName == "RR" ]
then
currentPosition=2
else
errorHandler
fi

#Assigning Details Based on Team
#Step 2::
case $currentPosition in
10)
won=4
nrr="-0.503"
pointsTable $currentPosition $won $nrr  #here $2=won, 3=nrr
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
2)
won=10
nrr="+0.253"
pointsTable $currentPosition $won $nrr
;;
*)
echo " "
;;
esac