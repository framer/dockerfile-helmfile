#!/bin/bash

printf "Checking AWS Credentials\n"
/root/.local/bin/aws sts get-caller-identity

printf "Getting EKS kubeconfig"
/root/.local/bin/aws eks update-kubeconfig --name ${CLUSTER_NAME} --kubeconfig ~/.kube/${CLUSTER_NAME} --alias ${CLUSTER_NAME}
