#변수는 기본적으로 {}로 감싸야 하나 그냥 쓰는 것도 허용한다 
a=5 
echo "${a}"
echo "$a" 
#만약 5b를 출력하고 싶다면 반드시 중괄호를 쳐야한다 
echo "${a}b"

#변수 이름 규칙:
#Underscore를 제외한 특수 문자를 불허한다 
#대소문자를 구분해야 한다 
#영문 혹은 underscore로 시작해야한다 


#bash의 변수에는 기본적으로 타입이 없다 
#그러나, 정수와 배열을 선언할 수는 있다 

declare -i a 
a="adasds"  
#어차피 출력해도 0이나온다 
echo "$a" 
a=213213
echo "$a"

#local variable을 사용하면, 함수내에서만 사용할 수 있다 

#환경변수(Enviroment variable) 
#export된 환경변수는 해당 프로세스의 subshell에서 유효하다 
#export되지 않은 변수는 subshell에서 유효하지 않다 
#예를 들어 bash prompt에서 a=5; export a; 한후 
#justScript의 echo "$a"를 실행하면, a의 값이 출력된다 
#그러나 justScript의 echo "$b"를 실행하면 아무값도 출력되지 않는다 
#즉, 기본적으로 변수는 같은 process에서만 유효하나, export해서
#환경변수화 하면, sub shell까지 유효하다 


