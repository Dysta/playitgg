FROM debian:trixie-slim

RUN apt update && \
    apt install -y curl gnupg2

RUN curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null && \
    echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | tee /etc/apt/sources.list.d/playit-cloud.list

RUN apt update && \
    apt install -y playit

RUN mkdir -p /secrets
ADD run.sh /usr/local/bin/

CMD ["bash", "/usr/local/bin/run.sh"]
