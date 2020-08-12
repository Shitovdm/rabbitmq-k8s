FROM rabbitmq:3.8-management

ADD plugins/rabbitmq_delayed_message_exchange-3.8.0.ez $RABBITMQ_HOME/plugins/rabbitmq_delayed_message_exchange-3.8.0.ez
ADD plugins/accept-0.3.5.ez $RABBITMQ_HOME/plugins/accept-0.3.5.ez
ADD plugins/prometheus_cowboy-0.1.7.ez $RABBITMQ_HOME/plugins/prometheus_cowboy-0.1.7.ez
ADD plugins/prometheus_httpd-2.1.10.ez $RABBITMQ_HOME/plugins/prometheus_httpd-2.1.10.ez
ADD plugins/prometheus_rabbitmq_exporter-3.7.9.1.ez $RABBITMQ_HOME/plugins/prometheus_rabbitmq_exporter-3.7.9.1.ez

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
RUN rabbitmq-plugins enable prometheus_rabbitmq_exporter

ADD definitions.json /etc/rabbitmq
ADD rabbitmq.conf /etc/rabbitmq