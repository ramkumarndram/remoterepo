echo "hellooo ";
echo "Enter a number : ";
read n;
echo "numbers decreasing from $n are : ";
while [ $n -gt 0 ]
do
echo $n;
n=`expr $n - 1`;
done
echo "hai"
