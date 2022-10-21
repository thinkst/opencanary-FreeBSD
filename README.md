# opencanary-FreeBSD

FreeBSD port for OpenCanary
## Overview

OpenCanary creates a network honeypot allowing you to catch hackers before they fully compromise your systems. As a technical definition, OpenCanary is a daemon that runs several canary versions of services that alerts when a service is (ab)used.

Docs: https://opencanary.readthedocs.io/en/latest/

GitHub: https://github.com/thinkst/opencanary

## Install

Clone the repo and run the following command

```bash
sudo make install
```

## Create a package to install on other systems

Clone the repo and run the following commands

```bash
sudo make package
```

This will create a FreeBSD package in the `work/pkg/` folder of the port.

The package can be installed on systems using

```bash
sudo pkg install opencanary-0.8.0.pkg
```


