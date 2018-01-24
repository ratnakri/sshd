FROM alpine:latest

RUN apk update \
	&& apk add openssh-server openssh-client \
	&& rm -Rf /var/cache/apk/* \
	&& /usr/bin/ssh-keygen -A

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]


