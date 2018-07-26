## init review

```sh
$ docker run --rm -v `pwd`:/usr/src/book [docker image id] /bin/sh -c "review-init book-name"
```

## install dependency

```sh
$ docker run --rm -v `pwd`/book-name:/usr/src/book [docker image id] /bin/sh -c "bundle install --path vendor/bundle"
```

## generate book

```sh
$ docker run --rm -v `pwd`/book-name:/usr/src/book [docker image id] /bin/sh -c "bundle exec rake pdf"
```
