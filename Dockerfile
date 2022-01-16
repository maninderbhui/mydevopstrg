FROM  centos:7.7.1908

MAINTAINER "maninderbhui@gmail.com Maninder Singh Bhui"

RUN  yum install epel-release  -y

RUN yum install  nginx  wget net-tools bind-utils unzip  -y

RUN yum clean all  

COPY  index.html   /usr/share/nginx/html

COPY  Dockerfile   /root/

COPY  index.html  /root/ 

WORKDIR  /usr/share/nginx/html

#ADD   webdump.tar.gz    /usr/share/nginx/html

EXPOSE  80
EXPOSE  443

CMD ["nginx","-g","daemon off;"]
