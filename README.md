```sh
$ bazel sync
$ bazel build //:next.config
$ cp cp bazel-bin/next.config.js ./
$ bazel build //:dist
```
