FROM rawmind/rancher-goagent:16.7.0-2

RUN apk --update add docker &&\
    rm -rf /var/cache/apk/*
