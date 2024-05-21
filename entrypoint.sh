#!/bin/bash

export repo_name="macvm-provisioning"
export repo="https://github.com/dsilevi/${repo_name}.git"

mkdir -p /root || exit
cd /root || exit
echo "Change to /root passed"

git clone ${repo} || exit
echo "Repository ${repo} was cloned"

cd ${repo_name} || exit
echo "We are in /root/${repo_name}"

echo "K8S macvm provisioning expects you have already deployed virtual machines with ubuntu 22.04/amd64 and they are reachable"
echo "Check and correct your configuration in cluster_conf.yaml"
echo "Start: python3 main.py cluster_conf"

sleep infinity
