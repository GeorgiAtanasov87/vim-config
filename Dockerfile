FROM ubuntu:rolling

RUN apt-get update && apt-get install curl git -y

ENTRYPOINT [ "/bin/bash" ]