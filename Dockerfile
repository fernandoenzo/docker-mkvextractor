FROM ghcr.io/fernandoenzo/debian:10
MAINTAINER Fernando Enzo Guarini (fernandoenzo@gmail.com)

ENV DISPLAY :0

COPY scripts/basics /tmp
COPY static/mkvextractor.list /etc/apt/sources.list.d/

RUN bash /tmp/basics

CMD ["mkv-extractor-qt5"]
