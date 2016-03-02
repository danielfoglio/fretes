
# Ingress

Depending on where you run k8s, there may or may not be an ingress controller
provided. On GKE / AWS - it will use the native Load Balancers. If you
are deploying on bare metal or Vbox, etc. you may need to create your own


There is a controller here based on nginx:

https://github.com/kubernetes/contrib/tree/master/ingress/controllers/nginx-third-party


The shell script provided will create it for you
