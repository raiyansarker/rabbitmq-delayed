# rabbitmq-delayed

RabbitMQ 3.13 with the [Delayed Message Exchange plugin](https://github.com/rabbitmq/rabbitmq-delayed-message-exchange) pre-enabled, ready to deploy on Railway.

## Deploy on Railway

1. Fork or connect this repo in Railway → **New Project → Deploy from GitHub repo**
2. Add a **Volume** mounted at `/var/lib/rabbitmq` to persist queues across restarts
3. Set environment variables:

| Variable | Description |
|---|---|
| `RABBITMQ_DEFAULT_USER` | Admin username |
| `RABBITMQ_DEFAULT_PASS` | Admin password |

Ports: `5672` (AMQP), `15672` (Management UI)

## Connect

```
amqp://user:pass@your-service.railway.internal:5672/
```

## Local

```bash
docker build -t rabbitmq-delayed .
docker run -d \
  -e RABBITMQ_DEFAULT_USER=admin \
  -e RABBITMQ_DEFAULT_PASS=admin \
  -p 5672:5672 \
  -p 15672:15672 \
  rabbitmq-delayed
```

Management UI: http://localhost:15672
