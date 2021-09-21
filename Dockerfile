FROM centos
EXPOSE 22
ENTRYPOINT [ "/bin/sh", "-c while true; do echo hello; sleep 10; done" ]