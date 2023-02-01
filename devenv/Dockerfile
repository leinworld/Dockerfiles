FROM ubuntu:latest
RUN apt update && \
    apt upgrade -y && \
    apt install -y sudo net-tools nodejs curl python3 git openssh-server mkcert vim npm && \
    curl -fsSL https://code-server.dev/install.sh | sh && \
    mkdir -p /run/sshd && \
    mkdir /docker-scripts

ENV PUID=1000 \
    PGID=1000 \
    USERNAME=codeuser \
    PASSWD=ubuntu

COPY ["entrypoint.sh", "/docker-scripts/entrypoint.sh"]
# for code-server
EXPOSE 8080

# for web-server
EXPOSE 8888

ENTRYPOINT ["/docker-scripts/entrypoint.sh"]
CMD ["code-server"]