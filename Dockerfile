FROM ubuntu:16.04

MAINTAINER ijun "i@liuzhen.info"

RUN apt-get update
RUN apt-get install -y build-essential subversion git-core libncurses5-dev zlib1g-dev gawk flex quilt libssl-dev xsltproc libxml-parser-perl mercurial bzr ecj cvs unzip

CMD ["/bin/sh"]
