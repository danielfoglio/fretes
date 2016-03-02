# Example showing openam, opendj, ssoadm

Shows persistence across restarts. You need to setup persistent volumes
for this example. The easiest way to do this in a single node test cluster
is to use the "hostPath" volume type.  This can not be used in
production.

For GCE, see the scripts in misc/ to create a GCE Persistent Disk.


If you are just experimenting, the am-dj image is easier


# Todo

- create a job that clears out a config - or figure out how to recycle the storage
-
