FROM ubuntu:14.04

RUN apt-get update && apt-get install -y software-properties-common curl
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get update && apt-get -y upgrade
RUN curl -sL http://kindlegen.s3.amazonaws.com/kindlegen_linux_2.6_i386_v2_9.tar.gz > kindlegen.tgz
RUN curl -sL https://github.com/IDPF/epubcheck/releases/download/v3.0/epubcheck-3.0.zip > epubcheck.tgz
RUN apt-get install -y ruby2.1 ruby-switch texlive imagemagick nodejs inkscape calibre default-jre
RUN cd /tmp
RUN curl -sL http://production.cf.rubygems.org/rubygems/rubygems-2.4.4.tgz > rubygems.tgz
RUN tar xzf rubygems.tgz
RUN apt-get install -y ruby1.9.1-dev patch build-essential libcurl4-openssl-dev zip texlive-full
WORKDIR /rubygems-2.4.4
RUN ruby setup.rb
RUN gem install softcover
