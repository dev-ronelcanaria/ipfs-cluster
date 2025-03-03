# IPFS Cluster

This project is a personal implementation of an IPFS (InterPlanetary File System) cluster. The goal is to create a distributed and decentralized file storage system using IPFS.

## Features

- Distributed file storage
- Decentralized network
- High availability and redundancy
- Easy to scale

## Installation

To install the IPFS Cluster, follow these steps:

1. Clone the repository:
  ```sh
  ```sh
  git clone https://github.com/${GITHUB_USERNAME}/ipfs-cluster.git
  ```
  ```
2. Navigate to the project directory:
  ```sh
  cd ipfs-cluster
  ```
3. Copy the example environment file and configure it:
  ```sh
  cp .env.example .env
  ```
4. Open the `.env` file and update the configuration settings as needed.

5. Generate a `CLUSTER_SECRET` using the following command:
  ```sh
  openssl rand -hex 32
  ```
  **Note:** All clusters and nodes must use the same secret.

6. Set the `CLUSTER_NAME` to the desired name of your cluster.

7. Deploy the nodes and get the `CLUSTER_BOOTSTRAP` address using the following command:
  ```sh
  docker exec -it <cluster-name> ipfs-cluster-ctl peers ls
  ```

## Usage

To start the IPFS Cluster, run the following script with the appropriate parameter (`leader` or `node`):

```sh
./run.sh [leader|node]
```