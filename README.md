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
- Automated processing of log messages
- Supporting several and very different event sources

Aim of this repository is to run an EFK stack on your local machine using docker-compose.

## Launching the EFK stack

### Requirements

On your machine, make sure you have installed:
- [Docker][docker]
- [Docker Compose][docker-compose]

### Steps for installation:

1.) Clone the EFK repository.
```bash
git clone https://gitlab.com/tanmay.deep/efk-stack.git
```
2.) Move to the EFK-Stack directory
```bash
cd EFK-Stack
```

3.a.) If you want to get logs of an application running in a docker container.

* Add below given code to the docker-compose of the application.
```bash
    logging:
      driver: "fluentd"
      options:
        fluentd-address: localhost:24224
        tag: "custom-tag" #elastic index and kibana index pattern will be of same name
```

3.b.) If you want to get logs from a folder, specify the path of the parent directory of that folder in the .env file.

Eg. Logs are stored at /var/log/test/*.log so the path will be PATH_FILE=/var/log.

NOTE- Elasticsearch index and kibana index pattern will be same as the folder name of the log. Eg. Here it would be test.

4.) To build the EFK stack containers
```bash
docker-compose build
```

5.) To run the EFK stack containers in the background.
```bash
docker-compose up -d
```
6.) To make all the indices made in elasticsearch index patterns in kibana run the script in test.sh .

### Visualise the logs:
- Check for logs in Kibana at localhost:5601

[elasticsearch]: https://www.elastic.co/products/elasticsearch
[fluentd]: https://www.fluentd.org/
[kibana]: https://www.elastic.co/products/kibana
[efk]: https://docs.openshift.com/enterprise/3.1/install_config/aggregate_logging.html#overview
[docker]: https://www.docker.com/
[docker-compose]: https://docs.docker.com/compose/
