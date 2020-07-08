FROM ubuntu:18.04

RUN apt update
RUN apt install build-essential curl -y
RUN apt install file -y
RUN apt install asciinema -y
RUN apt install unzip -y

RUN useradd -ms /bin/bash rust

USER rust
ENV HOME /home/rust
ENV USER rust
ENV SHELL /bin/bash
WORKDIR /home/rust

ADD solo_poker /home/rust/game/solo_poker
