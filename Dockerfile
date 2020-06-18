FROM quay.io/roboll/helmfile:helm3-v0.118.5

ENV PATH "$PATH:/root/.local/bin"

# Add awscli
RUN apk add --update \
    docker \
    python \
    python-dev \
    py-pip \
    build-base \
    && pip install awscli --upgrade --user \
    && apk --purge -v del py-pip \
    && rm -rf /var/cache/apk/* \
    && echo "/root/.local/bin/" > /etc/profile.d/aws

COPY eks-configure.sh /opt/eks-configure.sh
