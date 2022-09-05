# !/bin/bash
echo "Welcome to Bash-Scientific Calculator"
echo
# Input type of operation
echo "Enter Choice :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Modulo"
echo "6. Percentage"
echo "7. Bitwise AND"
echo "8. Bitwise or"
echo "9. Trignometry-sin(deg)"
echo "10. Trignometry-cos(deg)"
echo "11. Trignometry-tan(deg)"
echo "12. Logarithm(ln)"
# Input user choice
echo
read -p 'Your choice : ' ch
if [ $ch -le 8 ]
then
	# Take user Input
	# echo "Enter Two numbers (a b): "
	read -p "Enter two numbers (a b): " a b
	# Switch Case to perform calculator operations
	case $ch in
	1)ans=`echo $a + $b | bc`;;
	2)ans=`echo $a - $b | bc`;;
	3)ans=`echo $a \* $b | bc`;;
	4)ans=`echo "scale=2; $a / $b" | bc`;;
	5)ans=`echo $a % $b | bc`;;
	6)ans=`echo "scale=2; $a / 100" \* $b | bc`;;
	7)ans=`echo $(( a & b ))`;;
	8)ans=`echo $(( a | b ))`;;
	esac
	echo "Answer : $ans"
else
	# Take user Input
	read -p "Enter number : " a
	# Switch Case to perform calculator operations
	case $ch in
	9)ans=`echo "scale=5; s($a*0.017453293)" | bc-l`;;
	10)ans=`echo "scale=5; c($a*0.017453293)" | bc-l`;;
	11)ans=`echo "scale=5; s($a*0.017453293)/c($a*0.017453293)" | bc-l`;;
	12)ans=`echo "scale=5; l($a)" | bc -l`;;
	esac
	echo "Answer : $ans"
fi
