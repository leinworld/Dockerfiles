FROM ubuntu:latest
RUN apt update && \
    apt upgrade -y && \
    apt install -y sudo net-tools nodejs curl python3 git && \
    curl -fsSL https://code-server.dev/install.sh | sh && \
    mkdir -p /code

WORKDIR /code
ENV HOME=/code \
    XDG_CONFIG_HOME=/code/.config \
    XDG_DATA_HOME=/code/.local/share

RUN mkdir -p .config/code-server/ && \
    code-server --install-extension ms-python.python && \
    code-server --install-extension donjayamanne.githistory

# for code-server
EXPOSE 8080

# for web-server
EXPOSE 8888

CMD ["code-server"]