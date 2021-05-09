FROM centos:7
MAINTAINER Annielin

RUN yum install -y wget

RUN cd /

ADD jdk-8u152-linux-x64.tar.gz /

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-9/v9.0.45/bin/apache-tomcat-9.0.45.tar.gz
RUN tar zxvf apache-tomcat-9.0.45.tar.gz

ENV JAVA_HOME=/jdk1.8.0_152
ENV PATH=$PATH:/jdk1.8.0_152/bin
cMD ["/apache-tomcat-9.0.45/bin/catalina.sh", "run"]

