rabbitmqctl add_vhost omotes;
rabbitmqctl set_permissions --vhost omotes root ".*" ".*" ".*";
rabbitmqctl add_vhost omotes_celery;
rabbitmqctl set_permissions --vhost omotes_celery root ".*" ".*" ".*";
rabbitmqctl add_user --vhost omotes "$RABBITMQ_OMOTES_USER_NAME" "$RABBITMQ_OMOTES_USER_PASSWORD";
rabbitmqctl set_permissions --vhost omotes "$RABBITMQ_OMOTES_USER_NAME" ".*" ".*" ".*";
rabbitmqctl add_user --vhost omotes_celery "$RABBITMQ_CELERY_USER_NAME" "$RABBITMQ_CELERY_USER_PASSWORD";
rabbitmqctl set_permissions --vhost omotes_celery "$RABBITMQ_CELERY_USER_NAME" ".*" ".*" ".*";

#_________________________________________________________________________________________________
# QUEUE MIGRATIONS

# mvp.4.RC2
# Ticket 84 84-extend-available-workflow-functionality-to-support-multiple-sdks-at-once

# Remove available_workflows & request_available_workflows durable queues if they exist.
# Messages may be dropped without repercussions.
rabbitmqctl delete_queue --vhost omotes available_workflows
rabbitmqctl delete_queue --vhost omotes request_available_workflows
