FROM balenalib/raspberrypi3-ubuntu:latest
LABEL maintainer="Vaceslav Ustinov <slava@xeqo.de>"

RUN apt-get update && \
    apt-get install -y \
    owserver owhttpd  \
    --no-install-recommends  && \
	  rm -rf /var/lib/apt/lists/*

# COPY owfs.conf /etc/owfs.conf
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 4304 2121

ENTRYPOINT [ "/start.sh" ]
