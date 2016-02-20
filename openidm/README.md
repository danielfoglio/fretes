# Run OpenIDM on k8s

This will start OpenIDM and an instance of postgres DB for the repo


The service is exposed via a NodePort (30100) - so it will work on a standalone
k8s cluster that does not support a load balancer.

Edit openidm-svc  if you want to change This
