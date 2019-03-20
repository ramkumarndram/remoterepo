clear
i="y"
echo "\nSIMPLE CALCULATOR"
echo "*****************"
while [ $i = "y" ]
do
echo "enter first number"
read a

echo "enter second number"
read b

echo "\n1.Addition\n2.Subtraction\n3.Multiplication\n4.Division\n5.Modulus\n\nEnter your Choice : "
read c

if [ $c -eq "1" ]; 
then
	echo $a" + "$b"="$((a+b))
elif [ $c -eq "2" ]; 
then
	echo $a" - "$b"="$((a-b))
elif [ $c -eq "3" ]; 
then
	echo $a" * "$b"="$((a*b))
elif [ $c -eq "4" ]; 
then
	if [ $b -eq 0 ]
	then
		echo "Division By Zero"
	elif [ $b -ne 0 ]
	then
		echo $a" / "$b"=" ` echo "scale = 2 ; $a / $b" | bc`
	fi
elif [ $c -eq "5" ]; 
then
	echo $a" % "$b"="$((a%b))
fi
echo "continue(yes/no)? enter y / n"
read i
if [ $i != "y" ]
then
	exit
fi
done
