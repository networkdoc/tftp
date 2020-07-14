FROM alpine:3.4
RUN apk add --no-cache tftp-hpa busybox
VOLUME /var/tftpboot
EXPOSE 69/udp
ENTRYPOINT ["in.tftpd"]
#CMD ["-L", "--secure", "/var/tftpboot"]
CMD ["sh", "-c", "busybox syslogd -n -O /dev/stdout & in.tftpd -Lvvv"]
