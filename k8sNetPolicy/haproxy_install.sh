#!/bin/bash
helm install haproxy-ingress haproxytech/kubernetes-ingress --set controller.ingressClassResource.enbaled=true --set controller.ingressClass=haproxy