FROM centos:7
MAINTAINER Annielin

RUN yum install -y wget

RUN wget https://download.oracle.com/otn/java/jdk/8u152-b16/aa0333dd3019491ca4f6ddbe78cdb6d0/jdk-8u152-linux-x64.tar.gz

RUN tar zxvf jdk-8u152-linux-x64.tar.gz

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-9/v9.0.45/bin/apache-tomcat-9.0.45.tar.gz
RUN tar zxvf apache-tomcat-9.0.45.tar.gz

ENV JAVA_HOME=/jdk1.8.0_152
ENV PATH=$PATH:/jdk1.8.0_152/bin
CMD ["/apache-tomcat-9.0.45/bin/catalina.sh", "run"]
