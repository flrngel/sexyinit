FROM ubuntu:trusty
RUN apt-get install -yq git curl python
RUN mkdir /sexyinit
WORKDIR /sexyinit
ADD . /sexyinit
RUN curl -sS https://gist.githubusercontent.com/flrngel/d7235411bd11ead5fe00/raw/9c51cf3ff5229132a49b395b243c5afd43f5c3e2/sexyinit | bash
