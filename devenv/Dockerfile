FROM ubuntu:latest
RUN apt update && \
    apt upgrade -y && \
    apt install -y sudo net-tools nodejs curl python3 git && \
    curl -fsSL https://code-server.dev/install.sh | sh && \
    useradd -m --shell /bin/bash codeuser && \
    echo "codeuser:leinworld" | chpasswd

USER codeuser
WORKDIR /home/codeuser

ENV HOME=/home/codeuser \
    XDG_CONFIG_HOME=/home/codeuser/.config \
    XDG_DATA_HOME=/home/codeuser/.local/share

# for code-server
EXPOSE 8080

# for web-server
EXPOSE 8888

CMD ["code-server"]