#Seach and replace
#syntax : ${param/pattern/string}
# param의 값에서 pattern을 찾아 string으로 대체
# pattern이 /로 시작하면 매치되는 모든 내용을 적용
# pattern이 #로 시작하면 pattern으로 시작하는 값에 적용
# pattern이 %로 시작하면 pattern이 끝나는 값에 적용
# 말그대로 문자열의 맨앞과 맨뒤에 없으면 끝임(위 두개)
# string을 주지 않으면 pattern에 매치되는 값 삭제

a="aaaabbbcc"
echo ${a/a/t}
echo ${a//a/t}


#Case modification
# ${param^^pattern} : 대문자화, 모든 글자에 적용
# ${param^pattern} : 대문자화, 첫 글자에만 적용
# ${param,,pattern} : 소문자화, 모든 글자에 적용
# ${param,pattern} : 소문자화, 첫 글자에만 적용


str="hello world"
echo "${str^^}"
capStr=${str^^}
echo "${capStr,,}"

echo "${str^^l}"
#l을 패턴화

echo "${str^^[lo]}"
#l,o를 패턴화


STR=("hello" "world")
echo "${STR[@]^}"
#array에 대해서는 각각 첫글자만 대문자화 한다


#Default values

# ${parameter:-word}
# parameter가 설정되어 있지 않거나 null 이면 word 사용
# default value를 설정할 때도 유용하다
# ${parameter:=word}
# parameter가 설정되어 있지 않거나 null 이면 word 사용 + param에 대입
# ${parameter:?word}
# parameter가 설정되어 있지 않거나 null 이면 에러 발생 + 메세지 출력
# ${parameter:+word}
# parameter가 null이 아닌 값으로 설정되어 있으면 word값으로 치환



if ! [ ${w:-""} ]; then
	echo "true"
else
	echo "false"
fi
# w값이 있으면 false 없으면 true 출력


echo ${a:+"mellow"}
# a값이 있어서 mellow로 치환 됨


#Indirect expansion
# syntax : ${!param} param값을 이름으로 하는 변수 사용
b="a"
echo ${!b}
#a의 값이 출력 됨
