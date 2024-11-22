FROM alpine:3.20
RUN apk add --no-cache ser2net
ENTRYPOINT ["ser2net"]
CMD ["ser2net", "-d", "-C", "2000:raw:0:$UDEV_DEVNODE:9600"]
