FROM centos:latest






RUN curl -O http://downloads.mongodb.org/linux/mongodb-linux-x86_64-2.6.6.tgz

RUN yum -y install tar 

#RUN mkdir -p "mongodb/data"

RUN tar -zxvf mongodb-linux-x86_64-2.6.6.tgz 

# no nned to create floder casue when we run below command it automatically create and put it into right floder ( no extra nesting)

#RUN mkdir -p "mongodb/data"

#RUN cp -R -n mongodb-linux-x86_64-2.6.6/ mongodb

RUN mv /mongodb-linux-x86_64-2.6.6 /mongodb



RUN mkdir -p "dbdata"


EXPOSE  27017

#CMD ["/bin/ls"]

#CMD ["/mongodb/bin/mongod"]


#VOLUME ["/data:/mongodb/data"]
 
CMD ["/mongodb/bin/mongod","--dbpath","/dbdata"]   

#CMD ["/mongodb/bin/mongod","--dbpath"]   




#ENTRYPOINT ["/mongodb/bin/mongod","--dbpath","/mongodb/data"]

#VOLUME ["/data:/mongodb/data"]

#ENTRYPOINT ["/mongodb/bin/mongod","--dbpath"]











