echo "Please select your favorite marvel character"
echo "Example"
echo "Ironman"
echo "Thor"
echo "Captain"
echo "choose your fav"
read favChar
function errorHandler(){
    echo "Please check your input, it is not valid :<"
}

#setting the rank of the character 
#step 1
if [ $favChar == "Ironman" ]
then
marvelRank=1
elif [ $favChar == "Thor" ]
then
marvelRank=2
elif [ $favChar == "Captain" ]
then
marvelRank=3
elif [ $favChar == "Widow" ]
then
marvelRank=4
elif [ $favChar == "Hawkeye" ]
then
marvelRank=5
else
errorHandler
fi

#assingin detials based on rank
#step2
case $marvelRank in
1)
    echo i am Ironman
    echo love you 3000..
    ;;
2)
    echo thor son of odin
    echo bring me thanos!!
    ;;
3)
    echo a boy from broklyn
    echo i had a date:-
    ;;
4)  
    echo i am a spy
    echo see you in a minute:(
    ;;
5)  
    echo i need a bow and arrow
    echo dont give me hope:
esac
