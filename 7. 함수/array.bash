#셸배열에는 indexed array와 associative array가 있다 
#indexed array가 일반적인 array, associative array는 map과 유사하다 
#bash는 일차원 배열만 지원한다 

#indexed array 
#선언: declare -a array 
#선언 + 초기화 : array=(abc  def xyz)
#변수 선언시 ""를 붙이지 말 것 array=("1", "2", "3") 
array=(1 5 3)
array+=(4) 
echo "0번째 인덱스 변수${array[0]}"
#값추가:  array+=(aaa)
#element 삭제:  unset array[1] 삭제해도 array의 index는 당겨지지 않음
#key 전체 목록 ${!array[@]} 
#전체 element : ${array[@]}
#n번째 element : ${array[n]}
#element 개수 : ${#array[@]}
echo "변수 개수 : ${#array[@]}"
#s번째 부터 n개의 element : ${array[@]s:n}




for i in "${array[@]}"
do
        echo "배열요소 순환$i"
done 
#배열요소 반복 



#Associative Array 
#선언 : declare -A array 
#선언 + 초기화 : array=([a]=hello [b]=world) 
#값추가 : array+=([c]=hahaha)
#element삭제 : unset array[a] 
#key 전체 목록: ${!array[@]}
#전체 element 값:  ${array[@]}
#특정 element : ${array[n]}
#element 개수 : ${#array[@]}
declare -A arr   
arr=([a]=1 [b]=2 [c]=3 [d]=4 [e]=5) 
arr+=([f]=6) 
unset arr[f]
for i in "${arr[@]}"
do
        echo "value: $i"
done 
for i in "${!arr[@]}"
do 
        echo "key: $i" 
done 

