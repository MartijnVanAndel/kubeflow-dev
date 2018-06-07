#!/bin/bash
#
# Script that defines various environment variables.
# This is script defines values for all the variables used in
# the instructions.

# Bucket and project must be unique for each project 

# Set PROJECT to the project you want to use with Kubeflow.
export PROJECT=cloud-ml-dev

export DEPLOYMENT_NAME=jlewi-kubeflow

# The name of the ip address as defined in cluster.jinja
# We will reserve a GCP IP address to use for ingress to the cluster.
export IP_NAME=static-ip

# Set the namespace to the name of the namespace to deploy Kubeflow in.
export NAMESPACE=kubeflow
export ZONE=us-east1-d
# Set config file to the YAML file defining your deployment manager configs.
export CONFIG_FILE=~/git_kubeflow-dev/kubeflow-deployments/cluster-cloud-ml-dev-jlewi.yaml
export PROJECT_CONFIG_FILE=project-${PROJECT}.yaml

# ksonnet environment
#export ENV=${PROJECT}

# The fully qualified domain name to use with ingress.
# You only need to set this if you want to use a custom domain
# with ingress as opposed to an automatic domain for your project.
# TODO(jlewi): What is the automatic domain name.
#export FQDN=${PROJECT}.kubeflow.dev