FROM bluedata/centos7:latest
ENV port 10000 
ENV user bluedata 
ENV version 6.0.2 
ENV data_dir /home/$user/data 

RUN yum -y install epel-release
RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm

RUN yum -y install sudo \
        yum -y install wget \
        yum -y install git \
        yum -y install zip \
        yum -y install unzip \
        yum -y install java-1.8.0-openjdk \
        yum -y install epel-release \
        yum -y install nginx \
        yum -y install freetype \
        yum -y install libgfortran \
        yum -y install libgomp \
        yum -y install python27 \
        yum -y install python27-devel \
        yum -y install python-devel \
        yum -y install python36u \
        yum -y install python36u-pip \
        yum -y install python36u-libs \
        yum -y install python36u-devel 

ADD updatePath.sh /etc/profile.d/updatePath.sh        

# JDK 8 Installation
RUN yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk/

# Install hadoop
RUN cd /opt/ &&  \
    wget http://mirrors.ircam.fr/pub/apache/hadoop/common/hadoop-3.2.1/hadoop-3.2.1.tar.gz && \
    tar zxf hadoop-3.2.1.tar.gz && \
    rm hadoop-3.2.1.tar.gz && \
    ln -s /opt/hadoop-3.2.1/ /opt/hadoop


USER $user
WORKDIR /home/$user

# Download DSS, untar distribution and remove tar.gz file
RUN wget -q https://cdn.downloads.dataiku.com/public/dss/${version}/dataiku-dss-${version}.tar.gz && \
    tar xzf dataiku-dss-${version}.tar.gz && \ 
    rm dataiku-dss-${version}.tar.gz && \
    rm -rf $version

#ADD dataiku_env-default.sh  ./data/bin/env-default.sh

# run DSS installer
RUN  dataiku-dss-${version}/installer.sh -d $data_dir -p $port

ADD license.json data/config/license.json

# Update Dataiku configuration to use Datatap as Hadoop connection
RUN echo "export PATH=$PATH:/opt/hadoop/bin" >> ~/data/bin/env-default.sh  && \
    rm ./dataiku-dss-${version}/lib/ivy/common-run/guava-18.0.jar && \
    rm ./dataiku-dss-${version}/lib/ivy/backend-run/guava-18.0.jar

# Install Hadoop integration into Dataiku
#RUN ./data/bin/dss stop
RUN ./data/bin/dssadmin install-hadoop-integration 
#RUN ./data/bin/dss start



COPY ./dbPlugin.tar.gz .
RUN mkdir /home/$user/dataiku-dss-${version}/resources/plugins/dev && \
    tar xzvf ./dbPlugin.tar.gz -C /home/$user/dataiku-dss-${version}/resources/plugins/dev && \
    rm dbPlugin.tar.gz

USER root
 
