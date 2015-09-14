FROM evarga/jenkins-slave

ADD sshd_config /etc/ssh/sshd_config

RUN apt-get update && apt-get install docker.io -y

RUN echo "root:jenkins" | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
