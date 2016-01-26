# example2

Configures two OpenAM nodes against an external OpenDJ instance that is not running on k8.

To run this example you need an external opendj instance.

Edit opendj-endpoint.yaml and put the IP address of your DJ server.
Assumes DJ has a top level dc=example,dc=com, and admin creds of cn=Directory Manager  / password
        xs

todo: Create persistent volume mounts for OpenAM (using PD or NFS?). Use persistent claims
