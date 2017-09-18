
# Configure kafka-enabled host

```

# Note: ansible should be installed on the host before running following script

ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook kafka_host.yml -e docker_hosts=1.2.3.4 -e docker_host_ssh_private_key_file=~/aws/key.pem -vv

```

# Run kafka service

```
./start-kafka.sh

```

# Run test producer

```
cd KAFKA_FOLDER
bin/kafka-console-producer.sh --broker-list $(hostname -i):9092 --topic test

```

# Run test consumer

```
bin/kafka-console-consumer.sh --bootstrap-server $(hostname -i):9092 --topic test --from-beginning
```



