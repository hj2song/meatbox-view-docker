#!/usr/bin/env sh

set -ex  # 모든 명령어 실행 로그 출력 및 오류 발생 시 즉시 종료

echo "파일 복사를 시작합니다."

# 소스 및 목적지 디렉토리 배열 정의
declare -A dirs=(
    ["img"]="/home/DATA/share/meatbox/static/img/"
    ["fonts"]="/home/DATA/share/meatbox/static/fonts/"
    ["css"]="/home/DATA/share/meatbox/static/css/"
    ["js"]="/home/DATA/share/meatbox/static/js/"
)

# 파일 복사 루프
for dir in "${!dirs[@]}"; do
    SRC="/home/DATA/www-deploy/meatbox-web2/src/main/webapp/${dir}/"
    DEST="${dirs[$dir]}"
    echo "복사: $SRC -> $DEST"
    cp -afv "${SRC}"* "${DEST}" || { echo "Error: $dir 파일 복사 실패"; exit 1; }
done

echo "파일 복사가 완료되었습니다."

exit 0