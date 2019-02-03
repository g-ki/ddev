FROM ddev-shell

USER ddev

# Install golang
RUN curl -O https://dl.google.com/go/go1.11.5.linux-amd64.tar.gz &&\
	sudo tar -C /usr/local -xzf go1.11.5.linux-amd64.tar.gz

COPY ./dotfiles/.post-plugin.vim /tmp/.post-plugin.vim
COPY ./dotfiles/.plugin.vim /tmp/.plugin.vim

COPY ./build.sh /tmp/build.sh

RUN bash /tmp/build.sh && \
	sudo rm /tmp/build.sh

CMD ["/bin/zsh"]
