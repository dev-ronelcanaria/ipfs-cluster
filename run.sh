#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

echo "Starting IPFS Cluster setup script..."
echo "Usage: $0 {leader|node}"
echo "This script sets up an IPFS Cluster using Docker Compose."
echo "Pass 'leader' as an argument to set up the leader node."
echo "Pass 'node' as an argument to set up a regular node."

if [ ! -f .env ]; then
  echo -e "${RED}.env file not found!${NC}"
  exit 1
fi

if [ "$1" == "leader" ]; then
  echo "Running Docker Compose leader setup..."
  docker compose -f docker-compose.leader.yml --env-file .env up -d
elif [ "$1" == "node" ]; then
  echo "Running Docker Compose node setup..."
  docker compose -f docker-compose.node.yml --env-file .env up -d
else
  echo -e "${RED}Usage: $0 {leader|node}${NC}"
  exit 1
fi
