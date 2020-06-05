FROM quay.io/roboll/helmfile:helm3-v0.118.5

# Add awscli
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
    && pip install awscli --upgrade --user \
    && apk --purge -v del py-pip \
    && rm -rf /var/cache/apk/*

COPY eks-configure.sh /opt/eks-configure.sh

