FROM nginx:mainline
RUN rm -rf /etc/nginx/conf.d/*
COPY nginx.conf /etc/nginx/conf.d/
RUN rm -rf /usr/share/nginx/html/
COPY index.php /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/
COPY ./wordpress /usr/share/nginx/html/
