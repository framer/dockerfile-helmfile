#!/bin/bash

printf "Checking AWS Credentials\n"
aws sts get-caller-identity

printf "Getting EKS kubeconfig"
aws eks update-kubeconfig --name ${CLUSTER_NAME} --kubeconfig ~/.kube/config --alias ${CLUSTER_NAME}
