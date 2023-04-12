if [ -e ./simpleComp1  ]; then
        echo "It exists"
fi

if [ -e "./fileOperator2" ]; then 
        echo "It exists"
fi

f="./fileOperator2" 

if [ -r "$f" ]; then
        echo "You have the authority to read"
fi 

#-e 파일 존재 여부
#-f reqular 파일여부
#-d 디렉토리 여부
#-b 블록파일 여부
#-c character device file 여부
#-L symbolic link file 여부
#-r 읽기 권한 여부
#-w 쓰기 권한 여부
#-x 실행 권한 여부


