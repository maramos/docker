# docker

Docker-compose environments.
It's not recommended to use in a production environment as security and performance isn't the first goal, instead we can use these environments to test, have a better understand of how to implement and automate/orchestrate these applications.

The list below is going to be expanded!

| App            | Description                                                          |
|----------------|----------------------------------------------------------------------|
| elastic/es     | elasticsearch and kibana using all default settings                  |
| elastic/es_sec | elastic stack using native sec settings and certificates self signed |
| elastic/saml   | elastic stack connecting to a saml idp deployed in a docker          |
| elastic/ad     |                                                                      |
| monitoring/prometheus|                                                                |
| kubernets      |                                                                      |
| me/ml/openCV   |                                                                      |

See my [CONTRIBUTING](CONTRIBUTING.md) file for information about setting up your dev environment to build Beats from the source.
