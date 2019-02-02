FROM ubuntu:bionic

RUN apt-get update && \
	apt-get install sudo -y && \
	adduser --disabled-password --gecos '' ddev && \
	adduser ddev sudo && \
	echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
	apt-get autoremove -y && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
RUN apt-get update && \
	apt-get install -y language-pack-en-base && \
	rm -rf /var/lib/apt/lists/*

ENV TERM screen-256color

COPY build.sh /tmp/build.sh

RUN bash /tmp/build.sh && \
	rm /tmp/build.sh

ENV USER ddev

ENV HOME /home/ddev

WORKDIR /home/ddev

USER ddev

CMD ["/bin/bash"]
