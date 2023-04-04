0:표준입력
1:표준출력
2:표준에러

1. 출력 리디렉션 > 
형식 : 명령어 [n] >[|] 파일명 *n의 기본값은 표준 출력임

ex) ls 2 >| file.txt 
해석 : 명령어의 표준에러 스트림을 file.txt에 담아라 option으로 덮어쓰기도 해버림

2. 추가 모드 출력 리디렉션 >> 
ex) ls 2 >> file.txt
해석 : 파일 끝에 해당명령어의 표준에러를 덮어써라

3. 파일 디스크립터로 리디렉션 >&
ex) ls > result 2>&1
해석 : result에 표준 출력을 담을건데, 에러가 뜨면 1번에 담아!

4. 표준 출력 및 표준 에러 동시 리디렉션
ex) ls &> log.txt 
해석 : 표준 출력이 실패하면 표준 에러 처리해

5. 입력 리디렉션  <, <<, <<<



 ex) cat >> log.txt < a
 해석: a가 표준 입력으로 cat에 전달되어 그게 다시 log.txt로 이동한다

ex) cat < log.txt 
해석: log.txt의 내용이 cat에 표준입력으로 전달 되어, cat이 출력함


6. 파이프 라인
command1 | command2 : command1의 표준출력이 command2의 표준입력으로 연결 됨
ex) cat log.txt | wc 
wc는 문자, 단어, 행수를 출력함
ps -ef | grep "node" 

ccommand1 |& command2 " command1의 표준 출력과 표준에러가 command2의 표준입력으로 연결 됨
전체 파이프라인의 exit status는 마지막 실행 커맨드의 exit status임
pipefail 옵션이 설정되어 있다면 실패한 커맨드가 존재하면 실패처리됨
