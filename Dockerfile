FROM ubuntu
MAINTAINER sindhu
RUN apt update -y
RUN apt install nginx -y
WORKDIR /app
ADD https://downloads.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.tar.gz.asc /app
CMD ["nginx", "-g", "daemon off;"]
COPY ./*  /app/
EXPOSE 80

