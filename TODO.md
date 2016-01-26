# TODO

Strategies for OpenAM bootstrapping

Currently mounting ~/openam as a Volume.
Consider: Create contents of ~/openam on the fly - using ENV vars



Todos:
   - Create a standalone persistence VM.  For OpenDJ and NFS. Possibly postgres for OpenIDM
      (this aligns with the strategy that persistence services are probably going to live outside of Docker)
   - prototype a script that creates ~/openam using ENV vars and secrets (keystore.jks may be an issue)
   - Create  Apache + policy agent Docker image. Should be able to dynamically configure
   - Create OpenIG image. Set up dynamic reverse proxy config
   - Create OpenIDM image

# Misc Notes:


Here is the contents a typical openam boot file

ldap://opendj:389/http%3A%2F%2Fopenam-svc-a%3A80%2Fopenam?user=cn%3Ddsameuser%2Cou%3DDSAME+Users%2Cdc%3Dexample%2Cdc%3Dcom&pwd=AQIC5wM2LY4SfczLlj6134qMTx0nkE5XiFMg&dsbasedn=dc%3Dexample%2Cdc%3Dcom&dsmgr=cn%3DDirectory+Manager&dspwd=AQIC5wM2LY4SfczLlj6134qMTx0nkE5XiFMg&ver=1.0

Need way of distributing openam/keystore.jks to each OpenAM instance


openam/lib/*xsl look to be legacy. Not referenced in the code. Can probably be deleted


   Pass in the encryption key as a secret, or use a default
   Need to generate the keystore, .storepass, .keypass


   keystore.jks - uses default password: changeit

   This is not the same as the bootstrap password

keytool -exportcert -keystore keystore.jks -storepass  changeit -alias test -rfc
-----BEGIN CERTIFICATE-----
MIICQDCCAakCBEeNB0swDQYJKoZIhvcNAQEEBQAwZzELMAkGA1UEBhMCVVMxEzARBgNVBAgTCkNh
bGlmb3JuaWExFDASBgNVBAcTC1NhbnRhIENsYXJhMQwwCgYDVQQKEwNTdW4xEDAOBgNVBAsTB09w
ZW5TU08xDTALBgNVBAMTBHRlc3QwHhcNMDgwMTE1MTkxOTM5WhcNMTgwMTEyMTkxOTM5WjBnMQsw
CQYDVQQGEwJVUzETMBEGA1UECBMKQ2FsaWZvcm5pYTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExDDAK
BgNVBAoTA1N1bjEQMA4GA1UECxMHT3BlblNTTzENMAsGA1UEAxMEdGVzdDCBnzANBgkqhkiG9w0B
AQEFAAOBjQAwgYkCgYEArSQc/U75GB2AtKhbGS5piiLkmJzqEsp64rDxbMJ+xDrye0EN/q1U5Of+
RkDsaN/igkAvV1cuXEgTL6RlafFPcUX7QxDhZBhsYF9pbwtMzi4A4su9hnxIhURebGEmxKW9qJNY
Js0Vo5+IgjxuEWnjnnVgHTs1+mq5QYTA7E6ZyL8CAwEAATANBgkqhkiG9w0BAQQFAAOBgQB3Pw/U
QzPKTPTYi9upbFXlrAKMwtFf2OW4yvGWWvlcwcNSZJmTJ8ARvVYOMEVNbsT4OFcfu2/PeYoAdiDA
cGy/F2Zuj8XJJpuQRSE6PtQqBuDEHjjmOQJ0rV/r8mO1ZCtHRhpZ5zYRjhRC9eCbjx9VrFax0JDC
/FfwWigmrW0Y0Q==
-----END CERTIFICATE-----

