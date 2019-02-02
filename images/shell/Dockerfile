FROM ddev-base

USER ddev

COPY ./dotfiles/* $HOME/

COPY ./build.sh /tmp/build.sh

RUN bash /tmp/build.sh && \
	sudo rm /tmp/build.sh

CMD ["/bin/zsh"]
