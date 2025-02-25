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
