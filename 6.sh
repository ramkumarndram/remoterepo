echo "enter the name of new directory : ";
read name;
mkdir $name;
cd $name;
touch file1.txt;
echo "enter the contents of file1";
cat >>file1.txt;
touch file2.txt;
echo "enter the contents of file2";
cat >>file2.txt;
touch file3.txt;
echo "enter the contents of file3";
cat >>file3.txt;
echo "\nfile1.txt :";
cat file1.txt;
echo "\nfile2.txt :";
cat file2.txt;
echo "\nfile3.txt :";
cat file3.txt;
echo "\nFirst three columns of file1:"
cut -b 1,2,3 file1.txt
cat file1.txt>>file3.txt
cat file2.txt>>file3.txt
echo "\nContents of file3 after redirecting contents of file1 and file2 into file3:"
cat file3.txt
echo "\nEnter the string to be searched:"
read str
infile=$(cat file3.txt | grep -c "$str")
if [ $infile -eq 0 ]; then
  echo "$str is not present"
else
  echo "$str is present"
  grep "$str" file3.txt
fi
