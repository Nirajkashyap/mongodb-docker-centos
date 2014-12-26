FROM centos:latest


# from source rpm but cloud not find find rpm on any mirror
#RUN echo -e "[mongodb]\nname=MongoDB Repository \nbaseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/ \ngpgcheck=0 \nenabled=1" >> "/etc/yum.repos.d/mongodb.repo"

#RUN yum install -y mongodb-org


#RUN semanage port -a -t mongod_port_t -p tcp 27017

#RUN service mongod start




RUN curl -O http://downloads.mongodb.org/linux/mongodb-linux-x86_64-2.6.6.tgz

RUN yum -y install tar 

#RUN mkdir -p "mongodb/data"

RUN tar -zxvf mongodb-linux-x86_64-2.6.6.tgz 

# no nned to create floder casue when we run below command it automatically create and put it into right floder ( no extra nesting)

#RUN mkdir -p "mongodb/data"

#RUN cp -R -n mongodb-linux-x86_64-2.6.6/ mongodb

RUN mv /mongodb-linux-x86_64-2.6.6 /mongodb

#RUN mkdir -p "mongodb/data"

RUN mkdir -p "dbdata"

#ENV 27017

EXPOSE  27017

#CMD ["/bin/ls"]

#CMD ["/mongodb/bin/mongod"]


#VOLUME ["/data:/mongodb/data"]
 
CMD ["/mongodb/bin/mongod","--dbpath","/dbdata"]   

#CMD ["/mongodb/bin/mongod","--dbpath"]   




#ENTRYPOINT ["/mongodb/bin/mongod","--dbpath","/mongodb/data"]

#VOLUME ["/data:/mongodb/data"]

#ENTRYPOINT ["/mongodb/bin/mongod","--dbpath"]











