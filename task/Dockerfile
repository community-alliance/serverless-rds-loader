FROM alpine:3.7
RUN \
    apk -Uuv add groff less python py-pip && \
    apk add jq && \
	pip install awscli && \
    apk add --no-cache mysql-client
ADD scripts scripts
ADD bin/run.sh scripts/run.sh
WORKDIR scripts
RUN chmod +x run.sh
ENTRYPOINT ["/scripts/run.sh"]

