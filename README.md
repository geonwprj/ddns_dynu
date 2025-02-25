# ddns_dynu

A simple solution to update your Dynu Dynamic DNS using Podman. This repository contains a Docker image that runs a script to update your IP address with Dynu's API. The credentials are stored in a separate `.env` file for security.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Sample .env File](#sample-env-file)
- [GitHub Actions](#github-actions)
- [License](#license)

## Features

- Lightweight Docker image based on Alpine Linux.
- Secure handling of Dynu credentials using environment variables.
- Easy to set up and run with Podman.
- Option to automate updates using systemd timers.

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/ddns_dynu.git
   cd ddns_dynu
   ```
2. Create a `.env` file: Create a file named `.env` in the root of the repository and add your Dynu credentials:

   ```bash
   touch .env
   ```
   Add the following content to the `.env` file:
   ```env
   DYNU_USERNAME=your_username
   DYNU_PASSWORD=your_password
   DYNU_HOSTNAME=your_hostname
   ```
3. Build the Docker image:
   ```bash
   podman build -t ddns-updater .
   ```
4. Run the container: You can run the container manually to test it:
   ```bash
   podman run --rm --env-file .env ddns-updater
   ```
5. Automate with systemd (optional): Follow the instructions in the [systemd timer section](https://duckduckgo.com/?q=DuckDuckGo+AI+Chat&ia=chat&duckai=1#systemd-timer) to set up automatic updates every 4 hours.
