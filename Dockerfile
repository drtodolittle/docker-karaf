FROM java:8-jdk

MAINTAINER cloud57

ENV KARAF_VERSION=4.1.1

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

ENV KARAF_VERSION=4.1.1

RUN wget http://www-us.apache.org/dist/karaf/${KARAF_VERSION}/apache-karaf-${KARAF_VERSION}.tar.gz; \
    mkdir /opt/karaf; \
    tar --strip-components=1 -C /opt/karaf -xzf apache-karaf-${KARAF_VERSION}.tar.gz; \
    rm apache-karaf-${KARAF_VERSION}.tar.gz;

EXPOSE 1099 8101 44444
ENTRYPOINT ["/opt/karaf/bin/karaf"]

