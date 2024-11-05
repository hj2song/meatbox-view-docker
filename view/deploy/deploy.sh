#!/usr/bin/env/ sh


cp -rp /home/DATA/www-deploy/meatbox-web2/src/main/webaap/img/* /home/DATA/share/meatbox2/static/img/ && exit 1
cp -rp /home/DATA/www-deploy/meatbox-web2/src/main/webaap/font/* /home/DATA/share/meatbox2/static/font/ && exit 1
cp -rp /home/DATA/www-deploy/meatbox-web2/src/main/webaap/css/* /home/DATA/share/meatbox2/static/css/ && exit 1
cp -rp /home/DATA/www-deploy/meatbox-web2/src/main/webaap/js/* /home/DATA/share/meatbox2/static/js/ && exit 1

exit 0