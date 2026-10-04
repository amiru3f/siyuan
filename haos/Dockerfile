FROM b3log/siyuan:v3.8.6

RUN apk add --no-cache jq

COPY run.sh /run.sh
RUN chmod 755 /run.sh

ENTRYPOINT ["/run.sh"]
