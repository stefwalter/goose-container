FROM fedora:42

RUN dnf install -y libxcb python3

RUN curl -fsSL https://github.com/block/goose/releases/download/stable/download_cli.sh | GOOSE_BIN_DIR=/usr/local/bin CONFIGURE=false bash

RUN useradd -m -d /goose -G wheel goose
USER goose
WORKDIR /goose
VOLUME /goose
RUN chown goose:goose /goose

ENTRYPOINT ["/usr/bin/bash"]
CMD ["-c", ". ~/.bashrc; /usr/local/bin/goose"]
