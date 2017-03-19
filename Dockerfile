FROM ubuntu:16.04

MAINTAINER ijun "i@liuzhen.info"

RUN apt-get update
RUN apt-get install -y build-essential subversion git-core libncurses5-dev zlib1g-dev gawk flex quilt libssl-dev xsltproc libxml-parser-perl mercurial bzr ecj cvs unzip
RUN useradd -m mockbuilder && \
    echo 'mockbuilder ALL=NOPASSWD: ALL' > /etc/sudoers.d/mockbuilder
RUN sudo -iu mockbuilder wget https://downloads.lede-project.org/releases/17.01.0/targets/ar71xx/nand/lede-sdk-17.01.0-ar71xx-nand_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz &&\
    sudo -iu mockbuilder tar xfa lede-sdk-*.tar.xz &&\
    sudo -iu mockbuilder rm -f lede-sdk-*.tar.xz &&\
    sudo -iu mockbuilder mv lede-sdk-* sdk

CMD ["sudo", "-iu", "mockbuilder", "bash"]
