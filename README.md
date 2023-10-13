# Wazuh Honeypot

> [!WARNING]
> This repository is for educational and research purposes only. Deploying honeypots on a network without proper authorization may be illegal in some jurisdictions. Use responsibly and in compliance with applicable laws and regulations.

## Overview
This repository contains Docker containers designed not only to attract attackers by simulating system vulnerabilities but also to log malicious activities and send them to a Wazuh server for alert triggering. These containers include the Wazuh Agent to facilitate the generation of logs in the format expected by Wazuh Server (v.4.5.0-1).

## Purpose
The primary objective of these honeypots extends beyond attracting attackers. While they do simulate vulnerabilities to entice potential attackers and gather insights into their tactics and techniques, the goal is to log malicious activities and transmit them to a Wazuh server for alert triggering.

If we consider the term "low-interaction honeypot" in its more fundamental sense, these containers do not precisely fit that description. They operate as full systems (albeit within containers) with real applications running. Unlike Python scripts that emulate an SSH login prompt and banner or an HTTP authentication prompt on port 443, these containers present real services. However, despite this high level of interaction, the information collected by this high-interaction honeypot primarily falls into the reconnaissance category, which, in this context, aligns it with the characteristics of a simple, low-interaction honeypot.

The decision to take this approach was driven by two key factors:

- **Support and Documentation**: Using low-interaction honeypots typically involves relying on services hosted by individuals from around the world. As open source honeypots are not widely adopted, obtaining support when encountering issues can be challenging. In contrast, the real services simulated in these containers benefit from extensive documentation and support communities, making it easier to troubleshoot and learn from.

- **Scalability**: This approach lays the foundation for future scalability. It is far more manageable to expand upon this groundwork to create a comprehensive high-interaction honeypot, which remains the ultimate goal.

## Features
- Utilizes Docker for straightforward deployment and management.
- Designed with scalability in mind.
- Maps container ports to the Docker host, creating the illusion of a single vulnerable machine (with the host IP).
- Integrates the Wazuh Agent for log generation and monitoring.
- Well-suited for research, threat intelligence, and security analysis.

## ~~Usage~~ (to be documented)
~~To set up the honeypots, navigate to the root directory of the project and run the following command:~~

```console
docker-compose up -d
```

## Contribution
Contributions and enhancements to this project are welcome. Please fork the repository, make your improvements, and submit a pull request. Be sure to adhere to the project's coding standards and guidelines.

<p align="center">
  <img src="https://github.com/gustavoconforti/wazuh-honeypot/assets/56703129/d30da931-de3a-44dd-93d5-cfa2c63f6331" style="width:50%;">
</p>

## License
This project is licensed under the [GNU General Public License, Version 3 (GPL-3.0)](LICENSE). See the [LICENSE](LICENSE) file for details.
