#!/bin/env bash

export DKUINSTALLDIR="/home/bluedata/dataiku-dss-5.1.5"
export DKU_NODE_TYPE="design"
export DKU_BASE_PORT="11000"
export DKU_NGINX_PORT="11000"
export DKU_BACKEND_PORT="11001"
export DKU_IPYTHON_PORT="11002"
export DKU_HPROXY_PORT="11003"
export DKUJAVABIN="/usr/bin/java"
export DKU_JAVA_OPTS="-ea -Dfile.encoding=utf8 -Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom -Djava.io.tmpdir=$DIP_HOME/tmp"
export DKU_BACKEND_JAVA_OPTS="-Xmx2g -XX:+UseG1GC -Xloggc:/dev/stderr -XX:+PrintGCTimeStamps "
export DKU_FEK_JAVA_OPTS="-Xmx2g -XX:+UseParallelGC -Xloggc:/dev/stderr -XX:+PrintGCDetails -XX:+PrintGCTimeStamps "
export DKU_HPROXY_JAVA_OPTS="-Xmx2g -XX:+UseParallelGC -Xloggc:/dev/stderr -XX:+PrintGCDetails -XX:+PrintGCTimeStamps "
export DKU_JEK_JAVA_OPTS="-Xmx2g -XX:+UseParallelGC -Xloggc:/dev/stderr -XX:+PrintGCDetails -XX:+PrintGCTimeStamps "
export DKU_DKU_JAVA_OPTS="-Xmx2g -XX:+UseParallelGC "
export DKU_BACKEND_JAVA_LIBRARY_PATH=""
export DKU_FEK_JAVA_LIBRARY_PATH=""
export DKU_HPROXY_JAVA_LIBRARY_PATH=""
export DKU_JEK_JAVA_LIBRARY_PATH=""
export DKU_DKU_JAVA_LIBRARY_PATH=""
export PATH=$PATH:/opt/hadoop/bin
