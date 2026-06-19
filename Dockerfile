FROM nginx:alpine

LABEL maintainer="sanjana-br" \
project="devops2exp" \
description="Tripillar Solutions static website served via Nginx"

RUN rm -rf /usr/share/nginx/html/*

COPY src/main/resources/index.html /usr/share/nginx/html/index.html


EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
