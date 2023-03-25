ls #현재 디렉토리 정보 출력
ls -a #숨김파일 포함 출력
ls -al #특정 디렉토리의 상세 정보 출력 물론 경로도 지정 가능
cat ./basic #특정 파일의 텍스트 전체 출력
# head tail도 cat과 사용법이 동일함
grep "ls" ./basic #basic파일에 "ls"가 들어간 라인 출력
find ./ -maxdepth 1 -type f #현재 디렉토리에서 깊이를 1로 하여 파일 탐색
echo "env" # 출력
history #실행된 명령어 출력
file ./basic #해당 파일의 형식을 알려줌
pwd #현재위치 출력'


