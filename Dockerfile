FROM kostromin/static:image
ADD default.conf /etc/nginx/conf.d
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN sed -i "0,/nginx/s/nginx/docker-nginx/i" /usr/share/nginx/html/index.html
CMD [ "nginx" ]
