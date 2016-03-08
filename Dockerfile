FROM ioft/armhf-ubuntu:14.04.3

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
  wget \
  libicu-dev \
  clang-3.6 \
  libpython2.7 \
  libxml2 \
  git\
  && update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.6 100 \
  && update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.6 100 \
  && rm -rf /var/lib/apt/lists/*

RUN wget -qO- http://dev.iachieved.it/iachievedit.gpg.key | apt-key add - \
  && echo "deb [arch=armhf] http://iachievedit-repos.s3.amazonaws.com/ trusty main" | tee --append /etc/apt/sources.list \
  && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends swift-2.2 \
  && rm -rf /var/lib/apt/lists/*

CMD ["swift"]
