FROM golang:alpine AS builder

ARG REVIEWDOG_VERSION=0.9.12

# https://docs.docker.com/develop/develop-images/multistage-build/#use-multi-stage-builds
WORKDIR /opt
SHELL ["/bin/ash", "-o", "pipefail", "-c"]
RUN set -x && \
    pwd && \
    wget -O - -q https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh| sh -s v${REVIEWDOG_VERSION}

FROM alpine:3.9.4

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
ARG REPO_NAME
LABEL org.label-schema.vendor="tmknom" \
      org.label-schema.name=$REPO_NAME \
      org.label-schema.description="Automated code review tool." \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.version=$VERSION \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/$REPO_NAME" \
      org.label-schema.usage="https://github.com/$REPO_NAME/blob/master/README.md#usage" \
      org.label-schema.docker.cmd="docker run -i --rm -v \$PWD:/work $REPO_NAME -f=checkstyle -diff='git --no-pager diff origin/master' -reporter=local < checkstyle.log" \
      org.label-schema.schema-version="1.0"

COPY --from=builder /opt/bin/reviewdog /reviewdog

RUN set -x && \
    apk add --no-cache git=2.20.1-r0

WORKDIR /work
ENTRYPOINT ["/reviewdog"]
CMD ["--help"]
