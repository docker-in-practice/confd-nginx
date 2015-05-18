Dead simple nginx proxy-pass with confd.

```
docker run -d --name nginx dockerinpractice/confd-nginx <etcd_backend>
```

Add your etcd upstreams under `/app/upstream/`.
