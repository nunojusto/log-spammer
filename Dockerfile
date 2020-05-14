FROM alpine:latest
RUN apk add --no-cache bc
COPY ./run.sh /
RUN chmod 755 /run.sh
ENTRYPOINT ["/run.sh"]
CMD [ "100", "5000" ]
