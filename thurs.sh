function add()
{
c=$(($1+$2))
echo $c
}
answer="$(add 100 200)"

echo "Addition of two numbers is $answer"
