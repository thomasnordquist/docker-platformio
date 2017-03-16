FROM alpine

RUN apk add --no-cache \
        python2 \
        py2-pip \
    && pip --no-cache-dir install platformio \
    && apk del py2-pip

RUN adduser jenkins -D -u 1000 -h /var/jenkins_home
VOLUME /var/jenkins_home
