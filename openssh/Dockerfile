FROM vulhub/openssh:7.7

LABEL maintainer="phithon <root@leavesongs.com>"

RUN set -ex \
    && adduser --home /home/vulhub --shell /bin/bash --disabled-password --gecos "" vulhub \
    && echo "vulhub:vulhub" | chpasswd \
    && adduser --home /home/example --shell /bin/bash --disabled-password --gecos "" example \
    && echo "example:123456" | chpasswd \
    && echo "deb http://archive.debian.org/debian/ stretch main contrib non-free\ndeb-src http://archive.debian.org/debian/ stretch main contrib non-free\ndeb http://archive.debian.org/debian-security/ stretch/updates main contrib non-free\ndeb-src http://archive.debian.org/debian-security/ stretch/updates main contrib non-free" > /etc/apt/sources.list \
    && apt update -y \
    && apt --fix-broken install -y \
    && apt install rsyslog procps curl lsb-release -y \
    && curl -k -so wazuh-agent.deb https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.5.0-1_amd64.deb \
    && WAZUH_MANAGER='192.168.0.38' dpkg -i ./wazuh-agent.deb \
    && echo "auth,authpriv.* /var/log/auth.log" > /etc/rsyslog.d/10-ssh.conf
