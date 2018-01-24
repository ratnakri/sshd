FROM alpine:latest

RUN apk update \
	&& apk add openssh-server \
	&& rm -Rf /var/cache/apk/* \
	&& /usr/bin/ssh-keygen -A

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]


