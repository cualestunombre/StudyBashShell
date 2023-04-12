function a()
{
        # echo "$#" 파라미터 개수를 출력함
        for ((i=1 ; i<=$# ; i++))
                do
                        chmod u+wxr "./""${!i}"
                done
}
function b()
{
        for i in "$*"  
        #하나의 워드로 인식  
        #반드시 ""를 사용할 것 
                do echo $i
        done
}
a firstscript secondscript
echo "$*"
echo "$@"



b 123 456


for i in "$@"  
 do
        echo $i 
done

#각각의 워드로 인식 