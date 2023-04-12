#주의점 : 괄호에서 한 칸 띄어서 작성할 것

if [ 5 -eq 5 ]; then
	echo "5"
fi
# 기본적인 if문 용법

if [ 5 -eq 5 -a 4 -eq 4 ]; then
	echo "4"
fi
# and는 -a or은 -o 


if [ 5 -gt 6 -o 4 -gt 111 ]; then
	echo "3"
else
	echo "6"
fi
#else문 용법


if [[ 5 -eq 5 && 4 -eq 4 ]]; then
	echo "5"
else
	echo "7"
fi
# and 확장 용법1

if [ 5 -eq 5 ] && [ 4 -eq 4 ]; then
	echo "6"
fi
# and 확장 용법2


#Integer 비교
#-eq 
#-ne 
#-gt
#-ge
#-lt
#-le


#String 비교 : 비교시 반드시 "$변수" --> 쌍다옴표를 붙여주자
# = : is equal to
# ==  : is equal to
# != : is not equal to
# < less than --> 알파벳 오더
# > greater than 
# 주의점 []에서는 \> [[]]에서는 >를 사용한다
# -z is NULL
# a=5 일때 5b를 출력하려면 echo "${a}b"라고 해야한다 