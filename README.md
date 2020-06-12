# EFK stack

A sample environment running an [EFK stack][efk] on your local machine.

Includes:

- [Elasticsearch][elasticsearch]
- [Fluentd][fluentd]
- [Kibana][kibana]

## Introduction

As software systems grow and become more and more decoupled, log aggregation is a key aspect to take care of.

The issues to tackle down with logging are:

- Having a centralized overview of all log events
- Normalizing different log types
- Automated processing of log messages
- Supporting several and very different event sources

Aim of this repository is to run an EFK stack on your local machine using docker-compose.

## Launching the EFK stack

### Requirements

On your machine, make sure you have installed:

- [Docker][docker]
- [Docker Compose][docker-compose]

### Steps:

1.)
```bash
git clone https://gitlab.com/tanmay.deep/efk-stack.git
```
2.)
```bash
cd EFK-Stack
```
3.) To get logs:
	3.a.) If you want to get logs of an application running in a docker container.
		* Add below give code to the docker container of the application.
		```bash
		    logging:
		      driver: "fluentd"
		      options:
		        fluentd-address: localhost:24224
		        tag: "custom-tag" #elastic index and kibana index pattern will be of same name
		```
		OR
	    * In the .env file update your docker image name (without tag) and the published and target ports of the application.

	3.b.) If you want to get logs from a folder, specify the path of the parent directory of that folder in the .env file.
		Eg. - PATH=/var/log if logs are in /var/log/<folder>



4.)
```bash
docker-compose up
```


[elasticsearch]: https://www.elastic.co/products/elasticsearch
[fluentd]: https://www.fluentd.org/
[kibana]: https://www.elastic.co/products/kibana
[efk]: https://docs.openshift.com/enterprise/3.1/install_config/aggregate_logging.html#overview
[docker]: https://www.docker.com/
[docker-compose]: https://docs.docker.com/compose/
