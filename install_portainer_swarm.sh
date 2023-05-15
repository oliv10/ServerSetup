#!/bin/bash

echo "This script will add Portainer to the Docker Swarm."
read -p "Do you want to proceed? (y/N): " yn

case $yn in
	y ) ;; 
	n ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac

curl -L https://downloads.portainer.io/ce2-18/portainer-agent-stack.yml -o portainer-agent-stack.yml 
docker stack deploy -c portainer-agent-stack.yml portainer

echo done