FROM rawmind/rancher-goagent:16.2.1-1

RUN apk --update add docker &&\
    rm -rf /var/cache/apk/*

ENV RANCHER_CLI_VERSION "v0.6.1"
RUN curl -sL https://github.com/rancher/cli/releases/download/${RANCHER_CLI_VERSION}/rancher-linux-amd64-${RANCHER_CLI_VERSION}.tar.gz \
    | tar -zx -C /tmp && \
    mv /tmp/rancher-${RANCHER_CLI_VERSION}/rancher /usr/bin/
