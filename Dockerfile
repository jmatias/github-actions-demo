FROM ghcr.io/catthehacker/ubuntu:act-24.04
LABEL authors="matasjx"



COPY certs/abbvie-global-root-ca.crt /etc/ssl/certs/abbvie-global-root-ca.crt
RUN sudo update-ca-certificates


ENTRYPOINT ["top", "-b"]
