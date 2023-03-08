#Dictionary is a container & it can store collection of data into that.
#Dictionary is a Key/value pair based and Key always unique.

declare -A employees
employees[developer]="Prajakta"
employees[analyst]="Vijay"
employees[support]="vikas"
employees[manager]="Shamlee"

echo "**************Add*************"
echo "Before Add " ${employees[*]}
employees[devops]="Nandha"
employees[teamlead]="Swapna"
echo "After Add " ${employees[*]}
echo "**************Edit************"
echo "Before Edit " ${employees[*]}
employees[analyst]="Swagath"
employees[manager]="Kaif"
echo "After Edit " ${employees[*]}
echo "**************Delete************"
echo "Before Delete " ${employees[*]}
unset 'employees[teamlead]'
echo "After Delete " ${employees[*]}

echo "Length ===> "${#employees[*]}
echo "Index ===> "${!employees[*]}