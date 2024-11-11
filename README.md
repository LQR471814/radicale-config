## radicale-config

> easy configuration of radicale using a docker image.

### usage

you should have a `users` text file that should look something like this, it specifies the existing user accounts and their passwords.

```
user1:password1
user2:password2
```

to run the image, do the following:

```sh
# $(pwd)/users - the path to your users text file
# $(pwd)/privkey.pem - the path to your SSL cert's private key
# $(pwd)/cert.pem - the path to your SSL cert's certificate
docker run \
   --mount type=bind,source="$(pwd)/users",target=/root/radicale/users \
   --mount type=bind,source="$(pwd)/privkey.pem",target=/root/radicale/cert/privkey.pem \
   --mount type=bind,source="$(pwd)/cert.pem",target=/root/radicale/cert/cert.pem \
   -t lqr471814/radicale-config \
   -p 5232:5232
```

