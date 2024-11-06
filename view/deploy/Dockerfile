FROM alpine:3.20.3

RUN mkdir -p    /home/DATA/www-deploy/meatbox-web2/src/main/webapp/WEB-INF/ \ 
                /home/DATA/share/meatbox && \

    adduser -D -u 1001 -g 1001 www && \
    chown www:www -R /home
    
    
WORKDIR /home/DATA/www-deploy/meatbox-web2/src/main/webapp

COPY --chown=www:www . .

USER www

CMD ["./deploy.sh"]