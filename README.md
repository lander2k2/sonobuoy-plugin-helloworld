# Sonobuoy Plugin Hello World!

## Prerequisites

* running Kubernetes cluster
* [sonobuoy](https://github.com/heptio/sonobuoy) installed

## How To

### Container Image

* Build and push image

```
    $ docker build -t [your/repo/name]
    $ docker push [your/repo/name]
```

* Generate K8s manifests

```
    $ sonobuoy gen > sonobuoy.yaml
```

* Modify the configmap in `sonobuoy.yaml` to add the custom config in `./plugins/`

* Deploy sonobuoy

```
    $ kubectl apply -f sonobuoy.yaml
```

* Check scan status

```
    $ sonobuoy status
```

* When complete, retrieve results

```
    $ sonobuoy retrieve
```

* Examine results

```
    $ tar xvf [tar file]
    $ cat plugins/helloworld/results
```

