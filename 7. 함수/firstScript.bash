#! /bin/bash

function test1()
{       

        echo "this is test1"
        echo $1 # 함수 매개변수 
        echo $2  
}

function test2()
{       tod=123
        local var1="$1" #지역변수 
        local var2="$2"
        if [ -z "$var1" ] || [ -z "$var2" ]; then
                echo "two arguments are required"
        else
                echo "var1 is $var1 var2 is $var2"
        fi
        return 240
} 

#지역변수를 쓰지 않으면 밖에서도 쓸 수가 있다 

test1 "hello" "world"

test2 "a" "b"

test2

msg="$?"
echo "$msg"

result=$(test1 "hello" "world") #출력값을 받아온다 
echo "$result"
echo "$tod"



# 출력값 : 
# this is test1
# hello
# world
# var1 is a var2 is b
# two arguments are required
# 240
# this is test1
# hello
# world
# 123


