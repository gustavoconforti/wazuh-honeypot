FROM vulhub/mysql:5.5.23
RUN apt update -y
RUN apt --fix-broken install -y
RUN apt install procps curl lsb-release -y
COPY my.cnf /etc/my.cnf
COPY wazuh-log-formatting.sh /wazuh-log-formatting.sh
RUN curl -k -so /tmp/wazuh-agent.deb https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.5.0-1_amd64.deb
RUN WAZUH_MANAGER='192.168.0.38' dpkg -i /tmp/wazuh-agent.deb
