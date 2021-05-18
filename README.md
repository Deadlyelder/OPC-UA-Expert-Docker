# OPC-UA-Expert-Docker

A docker to build and deploy the [UA Expert](https://www.unified-automation.com/products/development-tools/uaexpert.html), a GUI interface for interacting with the OPC UA servers.
The UA expert is only available for Linux and Windows systems, making it hassle to test on macOS, hence this docker. It uses [XQuartz](https://www.xquartz.org) and docker to run effectively without spinning a VM.

## Requirments

* XQuartz
* Docker
* UA Expert 

## Installation

Download the UA Expert Linux binary (AppImage) and place it in the directory of the Dockerfile. Change the name of the binary to `UaExpert.AppImage` and give it executable rights.
Then build the Docker using `docker build .` and finally run using `docker run <name of the image>`.

## Notes

* XQuartz setting in preference may need to be changed incase of issues.
