FROM balenalib/raspberrypi3-ubuntu-python:latest
LABEL maintainer="Vaceslav Ustinov <slava@xeqo.de>"

RUN apt-get update && \
    apt-get install -y \
    owfs owserver ow-shell owhttpd  \
    --no-install-recommends  && \
	  rm -rf /var/lib/apt/lists/*

COPY owfs.conf /etc/owfs.conf
COPY start.sh start.sh
RUN chmod +x start.sh

RUN mkdir /mnt/1wire


EXPOSE 4304 2121

VOLUME /mnt/1wire

CMD /start.sh
