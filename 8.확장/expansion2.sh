#Arithmetice Expansion 

#syntax : $((exp))
# id++, id--, ++id, --id 
# <<, >> : bitwise shifts 
# &, | : bitwise AND/OR 
# &&, || : logical AND/OR 
# expr ? expr : eppr : 삼항 연산자 
a=5 
a=$((a+5))
((a=a+5)) 
echo $a 
((a++))
echo $a 
echo "$a + 100 = $((a+100))" 
echo $(( 1< 2 ? 5 : 4))
echo $(( -z "" ? 5 : 4 ))
test=0x110
echo "${test}를 16진수로 변환하면 : $((${test}))"
#16진수 변환 




#Substring expansion 

#${parameter:offset}
#${parameter:offset:length}

a="abcdefg" 
echo ${a:3}
echo ${a:3:2}
#offset과 length는 음수가 가능하다 
#offset이 음수면 역방향으로 offset 계산  
#length가 마이너스면 전체-length로 계산 

echo ${a: -2}   
#마이너스면 띄어쓰기 필요 
echo ${a: -2:((1+1))}
#length에 산술 expr 사용 가능 


#array에 대해서도 적용가능함 

array=(1 2 3 4 5 6 7 8 9 10) 
b=${array[@]:5}
echo $b

