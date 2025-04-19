FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get install -y systemd && \
    apt-get install -y python3 && \
    apt-get install -y python3-pip && \
    apt-get install -y wget && \
    apt-get install -y screenfetch && \
    apt-get install -y neofetch && \
    apt-get install -y curl && \
    apt-get install -y unzip && \
    apt-get install -y git && \
    apt-get install -y nano && \
    apt-get install -y htop && \
    apt-get install -y speedtest-cli && \
    apt-get install -y tmate && \
    apt-get install -y fish && \
    apt-get install -y screen && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
RUN echo 'root:p3ssd' | chpasswd
EXPOSE 7200

CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]