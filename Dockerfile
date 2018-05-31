FROM resin/rpi-raspbian

LABEL maintainer "opsxcq@strm.sh"

RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    # Generic
    apt-utils
    build-essential \
    curl \
    wget \
    git \
    # Python
    python \
    python-pip \
    picocom \
    gcc-avr \
    avr-libc \
    avrdude \
    arduino-core && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install ino

WORKDIR /src

VOLUME /src
WORKDIR /src

COPY main.sh /

ENTRYPOINT ["/main.sh"]
CMD ["default"]

