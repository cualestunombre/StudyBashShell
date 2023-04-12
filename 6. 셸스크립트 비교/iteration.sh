for animal in dog cat pig 
do 
        echo "animal: $animal" 
done

#for 문 기본 형태 




for i in {0..3}
do 
        echo "Number: $i"
done 
#range 형태  




for (( i=0 ; i<10 ; i++ )); do
        echo "index $i" 
done 
#c-style 

colors="red orange blue" 
for color in $colors
do  
        echo "$color"
done 
# 띄어쓰기 단위로 인식 

colors="red orange blue"
for color in "$colors"
do 
        echo "$color"
done 
#하나로 인식 

index=0 
while [ $index -lt 10 ];
do
        echo "$index"
        index=$((index+1))
done
#(())처럼 소괄호를 두개 싸야 한다 

index=0 
string=""
while [ $index -lt 10 ];
do 
        string="$string$index"
        index=$((index+1))
done 
echo "$string"
#문자는 이렇게 합치면 된다 

