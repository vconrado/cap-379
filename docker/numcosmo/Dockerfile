FROM ubuntu:16.04
MAINTAINER Vitor Gomes <vconrado@gmail.com>

COPY files/install_numcosmo.sh /root
RUN chmod +x /root/install_numcosmo.sh
RUN /root/install_numcosmo.sh
ENTRYPOINT service ssh restart && bash
