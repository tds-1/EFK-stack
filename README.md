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

### Run

```bash
docker-compose up
```


## Reference

- [Quora - What is the ELK stack](https://www.quora.com/What-is-the-ELK-stack)
- [Fluentd vs. LogStash: A Feature Comparison](https://www.loomsystems.com/blog/single-post/2017/01/30/a-comparison-of-fluentd-vs-logstash-log-collector)
- [Panda Strike: Fluentd vs Logstash](https://www.pandastrike.com/posts/20150807-fluentd-vs-logstash)
- [Log Aggregation with Fluentd, Elasticsearch and Kibana - Haufe-Lexware.github.io](http://work.haufegroup.io/log-aggregation/)
- [Fluentd vs Logstash, An unbiased comparison](https://techstricks.com/fluentd-vs-logstash/)
- [Fluentd vs. Logstash: A Comparison of Log Collectors | Logz.io](https://logz.io/blog/fluentd-logstash/)

[elasticsearch]: https://www.elastic.co/products/elasticsearch
[fluentd]: https://www.fluentd.org/
[kibana]: https://www.elastic.co/products/kibana
[logstash]: https://www.elastic.co/products/logstash
[elk]: https://www.elastic.co/videos/introduction-to-the-elk-stack
[docker-fluentd]: https://docs.docker.com/reference/logging/fluentd/
[gcp-fluentd]: https://github.com/GoogleCloudPlatform/google-fluentd
[efk]: https://docs.openshift.com/enterprise/3.1/install_config/aggregate_logging.html#overview
[docker]: https://www.docker.com/
[docker-compose]: https://docs.docker.com/compose/
[rested]: https://itunes.apple.com/au/app/rested-simple-http-requests/id421879749?mt=12
