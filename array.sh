
#Array is a container & it can store collection of data into that.
#Array is a index based and index number always starts from 0.


employees=("Reshma" "Vanathy" "Kiran" "Dinesh")
echo "**************Add*************"
echo "Before Add " ${employees[*]}
employees[4]="Nandha"
employees[5]="Swapna"

echo "After Add " ${employees[*]}

echo "**************Edit************"
echo "Before Edit " ${employees[*]}
employees[1]="Swagath"
employees[4]="Kaif"
echo "After Edit " ${employees[*]}


echo "**************Delete************"
echo "Before Delete " ${employees[*]}
unset 'employees[3]'
echo "After Delete " ${employees[*]}

echo "Length ===> "${#employees[*]}
echo "Index ===> "${!employees[*]}

