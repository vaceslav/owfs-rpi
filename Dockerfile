FROM balenalib/raspberrypi3-ubuntu-python:latest
LABEL maintainer="Vaceslav Ustinov <slava@xeqo.de>"

RUN apt-get update && \
    apt-get install -y \
    owserver \
    --no-install-recommends  && \
	  rm -rf /var/lib/apt/lists/*

COPY owfs.conf /etc/owfs.conf

EXPOSE 4304

CMD /usr/bin/owserver -c /etc/owfs.conf --foreground
