#Brace expansion

for i in {$1..$2}
do	
	echo $i
done

#이렇게 하면 단순 문자열로 읽음

for i in $(seq $1 $2)
do 
	echo $i
done
#이렇게 해야함

echo log{1..3}.txt
echo "log{1..3}.txt" 
#brace expansion이 적용되지 않음


for i in {abc,def,qer,zxcv}
do 
	echo $i
done
#굳이 왜이렇게 하지?

for i in 테스트데이터{abc,def,qer,zxcv}
do
	echo $i
done
#이렇게 연결 데이터를 출력할 수 있어서
#brace expansion에서 더블quoting하지 말 것
#brace expansion에서는 변수를 사용할 수 없음(우선순위 문제) 

#Tilde Expansion
# ~: 현재 사용자의 홈 디렉토리로 확장
# ~USER : 특정 유저의 홈 디렉토리로 확장
# ~+ : 현재 디렉토리 $PWD
# ~- : 직전 디렉토리 $OLDPWD , cd - 시 직전 디렉토리 이동

# cd ~/basic : 홈디렉토리의 basic으로 이동
# 다른 사용자의 basic 파일 보기 : cd ~dog/basic 
# 역시 quoting금지


#Command Substitution
#$(command) 커멘드의 표준 출력을 변수로 받아 옴
# 명령어를 서브 쉘에서 실행하므로, 현재 프로세스에서는 변수를 사용할 수 없음
#중첩 가능


function a(){
	echo "내부 함수 출력"
}

function c(){
	echo $*
}
echo $(c $(a))
