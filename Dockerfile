FROM ubuntu:18.04

LABEL maintainer="Alexis Ahmed"

# Environment Variables
ENV HOME=/root
ENV DEBIAN_FRONTEND=noninteractive
ENV GO111MODULE=on
ENV GOROOT=/usr/local/go
ENV GOPATH=/root/go
ENV PATH=${GOPATH}/bin:${GOROOT}/bin:${PATH}

# Install dependencies
COPY ./install.sh /install.sh
RUN chmod +x /install.sh && /install.sh
