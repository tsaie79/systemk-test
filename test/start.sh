#!/bin/bash


export VK_PATH=`pwd`
# export KUBECONFIG="$VK_PATH/apiserver/config"

export KUBECONFIG="$HOME/.kube/config"

# export VKUBELET_POD_IP="10.250.64.71"
# export APISERVER_CERT_LOCATION="$VK_PATH/apiserver/client.crt"
# export APISERVER_KEY_LOCATION="$VK_PATH/apiserver/client.key"
# export KUBELET_PORT="10250"
export NODENAME="vk-systemk"

# ssh -NfL 39901:localhost:39901 jeng-yuantsai@72.84.73.170


$VK_PATH/../systemk --kubeconfig=$KUBECONFIG --nodename=$NODENAME --klog.v 3 > ./vk.log 2>&1  