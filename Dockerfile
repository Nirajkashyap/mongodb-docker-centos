FROM centos:latest



RUN echo -e "[mongodb]\nname=MongoDB Repository \nbaseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/ \ngpgcheck=0 \nenabled=1" >> "/etc/yum.repos.d/mongodb.repo"




RUN yum install -y mongodb-org


RUN semanage port -a -t mongod_port_t -p tcp 27017



RUN service mongod start


EXPOSE 27017:27017














