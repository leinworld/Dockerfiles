FROM ubuntu:latest
RUN apt update && \
    apt install -y openssh-server sudo vim && \
    mkdir -p /run/sshd && \ 
    useradd -m --shell /bin/bash ubuntu && \
    usermod -aG sudo ubuntu && \
    echo "ubuntu:leinworld" | chpasswd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]