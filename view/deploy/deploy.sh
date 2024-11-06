#!/usr/bin/env sh

set -ex  # 모든 명령어 실행 로그 출력 및 오류 발생 시 즉시 종료

echo "파일 복사를 시작합니다."

# 복사할 디렉토리 목록 정의

SRC="/home/DATA/www-deploy/meatbox-web2/src/main/webapp/WEB-INF/jsp/"
DEST="/home/DATA/share/meatbox/static/jsp/"
echo "복사: $SRC -> $DEST"
cp -avf "${SRC}"* "${DEST}" || { echo "Error: $dir 파일 복사 실패"; exit 1; }
don

echo "파일 복사가 완료되었습니다."

exit 0