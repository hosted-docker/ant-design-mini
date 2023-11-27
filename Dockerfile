FROM nginx

WORKDIR /usr/share/nginx/html/

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

ADD docs-dist /usr/share/nginx/html/mirror/ant-mini

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
