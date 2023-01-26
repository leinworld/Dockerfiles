FROM ubuntu:latest
RUN apt update && \
    apt upgrade -y && \
    apt install -y openssh-server sudo net-tools && \
    mkdir -p /run/sshd && \ 
    useradd -m --shell /bin/bash ubuntu && \
    usermod -aG sudo ubuntu && \
    echo "ubuntu:leinworld" | chpasswd

# for sshd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]