FROM plugins/base:amd64
MAINTAINER Drone.IO Community <drone-dev@googlegroups.com>

RUN apk add -U --no-cache git nodejs

LABEL org.label-schema.version=latest
LABEL org.label-schema.vcs-url="https://github.com/drone-plugins/drone-npm.git"
LABEL org.label-schema.name="Drone NPM"
LABEL org.label-schema.vendor="Drone.IO Community"
LABEL org.label-schema.schema-version="1.0"

ADD release/linux/amd64/drone-npm /bin/
ENTRYPOINT [ "/bin/drone-npm" ]
