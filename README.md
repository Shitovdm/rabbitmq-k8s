# RabbitMQ for K8s

[RabbitMQ](https://www.rabbitmq.com) is an open source message broker software
that implements the Advanced Message Queuing Protocol (AMQP).

## Cluster installation

[Instruction](https://github.com/Shitovdm/k8s-cookbook/tree/master/rabbitmq)

## For local development use

- Copy `.env.example` into `.env`;
- Create docker network **rabbit**;
```
docker network create rabbit
```
- Run docker-compose file:
```
docker-compose up -d --build
```