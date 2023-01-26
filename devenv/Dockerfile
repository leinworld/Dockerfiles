FROM ubuntu:latest
RUN apt update && \
    apt upgrade -y && \
    apt install -y sudo net-tools nodejs curl python3 git && \
    curl -fsSL https://code-server.dev/install.sh | sh && \
    useradd -m --shell /bin/bash ubuntu && \
    usermod -aG sudo ubuntu && \
    echo "ubuntu:leinworld" | chpasswd && \
    chown ubuntu:ubuntu /home/ubuntu/

USER ubuntu
WORKDIR /home/ubuntu

RUN mkdir -p .config/code-server/ && \
    echo "bind-addr: 0.0.0.0:8080" > .config/code-server/config.yaml && \
    echo "auth: password" >> .config/code-server/config.yaml && \
    echo "password: leinworld" >> .config/code-server/config.yaml && \
    echo "cert: false" >> .config/code-server/config.yaml &&\
    code-server --install-extension ms-python.python && \
    code-server --install-extension donjayamanne.githistory

# for code-server
EXPOSE 8080

# for web-server
EXPOSE 8888

CMD ["code-server"]