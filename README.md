# Wazuh Honeypot
## Overview
This repository contains Docker containers designed to emulate a single vulnerable server, operating as a low-interaction honeypot. Each container includes the Wazuh Agent for generating logs in the format expected by Wazuh Server (v.4.5.0-1).

## Purpose
The primary objective of these honeypots is to attract and analyze malicious activities. By simulating system vulnerabilities, they can entice potential attackers and gather valuable insights into their tactics and techniques. Since these are low-interaction honeypots, the information collected mainly falls into the reconnaissance category.

## Features
- Utilizes Docker for straightforward deployment and management.
- Maps container ports to the Docker host, creating the illusion of a single vulnerable machine (with the host IP).
- Integrates the Wazuh Agent for log generation and monitoring.
- Designed for low-interaction, minimizing the risk of actual system compromise.
- Well-suited for research, threat intelligence, and security analysis.

## ~~Usage~~ (to be implemented)
~~To set up the honeypots, navigate to the root directory of the project and run the following command:~~

```console
docker-compose up -d
```

## Contribution
Contributions and enhancements to this project are welcome. Please fork the repository, make your improvements, and submit a pull request. Be sure to adhere to the project's coding standards and guidelines.

## License
This project is licensed under the [GNU General Public License, Version 3 (GPL-3.0)](LICENSE). See the [LICENSE](LICENSE) file for details.

## Disclaimer
This repository is for educational and research purposes only. Deploying honeypots on a network without proper authorization may be illegal in some jurisdictions. Use responsibly and in compliance with applicable laws and regulations.
