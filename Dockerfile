FROM centos
EXPOSE 22
CMD [ "/bin/sh" ]
ARG [ '-c while true; do echo hello; sleep 10;done' ]