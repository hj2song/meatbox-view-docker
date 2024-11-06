#!/usr/bin/env sh

set -ex  # 오류 발생 시 스크립트 즉시 종료 및 명령어 출력

echo "파일 복사를 시작합니다."

# 소스 및 목적지 디렉토리 정의
IMG_SRC=/home/DATA/www-deploy/meatbox-web2/src/main/webapp/img/
IMG_DEST=/home/DATA/share/meatbox2/static/img/

FONTS_SRC=/home/DATA/www-deploy/meatbox-web2/src/main/webapp/fonts/
FONTS_DEST=/home/DATA/share/meatbox2/static/fonts/

CSS_SRC=/home/DATA/www-deploy/meatbox-web2/src/main/webapp/css/
CSS_DEST=/home/DATA/share/meatbox2/static/css/

JS_SRC=/home/DATA/www-deploy/meatbox-web2/src/main/webapp/js/
JS_DEST=/home/DATA/share/meatbox2/static/js/

# 파일 복사
echo "복사: $IMG_SRC -> $IMG_DEST"
cp -rp "$IMG_SRC"* "$IMG_DEST"

echo "복사: $FONTS_SRC -> $FONTS_DEST"
cp -rp "$FONTS_SRC"* "$FONTS_DEST"

echo "복사: $CSS_SRC -> $CSS_DEST"
cp -rp "$CSS_SRC"* "$CSS_DEST"

echo "복사: $JS_SRC -> $JS_DEST"
cp -rp "$JS_SRC"* "$JS_DEST"

echo "파일 복사가 완료되었습니다."

exit 0