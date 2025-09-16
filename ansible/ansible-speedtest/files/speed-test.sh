#!/bin/bash

#로그파일 경로
log_file="/var/log/speedtest.log"


# 스크립트의 표준 출력을 로그파일에 추가
exec >> "$log_file" 2>&1


echo "=========================="
echo "실행 시점 : $(date)"
echo ""
/usr/bin/speedtest
echo ""
echo "종료"
