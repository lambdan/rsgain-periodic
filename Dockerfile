FROM debian:trixie-slim

RUN apt update -y && apt install -y rsgain

COPY loop.sh /loop.sh
RUN chmod +x /loop.sh

CMD ["/loop.sh"]