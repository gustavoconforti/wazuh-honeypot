FROM httpd
RUN apt update -y
RUN apt install apache2-utils procps curl lsb-release -y
COPY httpd.conf /usr/local/apache2/conf/
COPY htpasswd /usr/local/apache2/
RUN curl -k -so /tmp/wazuh-agent.deb https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.5.0-1_amd64.deb
RUN WAZUH_MANAGER='192.168.0.38' dpkg -i /tmp/wazuh-agent.deb
