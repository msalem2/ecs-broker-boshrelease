echo yes|bosh delete deployment ecs-broker
echo yes|bosh delete release ecs_broker 1.5
./createRelease.sh
bosh upload release
bosh deployment ecs-broker.yml
echo yes|bosh deploy
bosh run errand deploy-service-broker --keep-alive



