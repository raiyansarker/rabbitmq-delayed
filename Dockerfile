FROM rabbitmq:3.13-management

# rabbitmq_delayed_message_exchange ships bundled in the official image since 3.11.
# No download needed — just enable it.
RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
