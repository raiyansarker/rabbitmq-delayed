FROM rabbitmq:3.13-management

# Download the delayed message exchange plugin directly from GitHub releases
ADD https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.13.0/rabbitmq_delayed_message_exchange-3.13.0.ez $RABBITMQ_HOME/plugins/

# Ensure proper permissions on the plugin file
RUN chown rabbitmq:rabbitmq $RABBITMQ_HOME/plugins/rabbitmq_delayed_message_exchange-3.13.0.ez

# Enable the plugin
RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
