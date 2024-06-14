## radicale-config

> easy configuration of radicale using a docker image.

### usage

- provide the `users` text file to specify allowed users and their passwords.
- `make image` create a docker image by the name of `lqr471814/radicale-config`.
- `make run` runs that docker image.
- the docker daemon will use the files `/root/radicale/cert/privkey.pem` and `/root/radicale/cert/cert.pem` for SSL auth, you should use a bind mount to get these files onto the container.

