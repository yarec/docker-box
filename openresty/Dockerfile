#FROM ficusio/openresty
FROM yarec/openresty

ENV USER_NAME docker

ENV NGINX_PREFIX /opt/openresty/nginx

COPY ./ep.sh /
RUN chmod +x /ep.sh

RUN rm -rf $NGINX_PREFIX/conf.d

#RUN  mkdir -p /ws/htdocs \
#  && mkdir -p /ws/log/nginx
#RUN  chown -R www-data.www-data /opt/htdocs /opt/log

RUN adduser $USER_NAME -D 
RUN addgroup $USER_NAME $USER_NAME

#USER $USER_NAME

EXPOSE 80
VOLUME ["/ws"]

ENTRYPOINT [ "/ep.sh" ]

#CMD ["nginx", "-g", "daemon off; error_log /dev/stderr info;"]
