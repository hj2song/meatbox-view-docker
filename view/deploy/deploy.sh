#!/usr/bin/env sh
sleep 100000
ls -alR /home/DATA/www-deploy/meatbox-web2/src/main/
set -ex  # 모든 명령어 실행 로그 출력 및 오류 발생 시 즉시 종료

echo "파일 복사를 시작합니다."

# 복사할 디렉토리 목록 정의
DIRS="img fonts css js"

for dir in $DIRS; do
    SRC="/home/DATA/www-deploy/meatbox-web2/src/main/webapp/${dir}/"
    DEST="/home/DATA/share/meatbox/static/${dir}/"
    echo "복사: $SRC -> $DEST"
    cp -avf "${SRC}"* "${DEST}" || { echo "Error: $dir 파일 복사 실패"; exit 1; }
done

echo "파일 복사가 완료되었습니다."

sleep 100000

exit 0