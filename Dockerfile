from debian:buster-slim

RUN apt update && \
    apt install -y curl gpg

RUN curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null && \
    echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | tee /etc/apt/sources.list.d/playit-cloud.list

RUN apt update && \
    apt install -y playit

RUN mkdir -p /secrets

CMD ["playit", "--stdout", "--secret_path", "/secrets/playit.toml"]
