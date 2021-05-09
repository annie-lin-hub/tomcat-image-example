FROM java
MAINTAINER annielin
RUN yum -y update
RUN yum install -y wget
RUN cd /
RUN wget http://apache.stu.edu.tw/tomcat/tomcat-9/v9.0.45/bin/apache-tomcat-9.0.45.tar.gz
RUN tar zxvf apache-tomcat-9.0.45.tar.gz

CMD ["/apache-tomcat-9.0.45/bin/catalina.sh", "run"]















