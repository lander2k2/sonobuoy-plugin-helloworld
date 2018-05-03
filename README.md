# Sonobuoy Plugin Hello World!

[Sonobuoy](https://github.com/heptio/sonobuoy) is a tool used to run conformance scans on Kubernetes clusters.  It has some very useful default plugins that can tell you a lot about your cluster, but you can also add your own plugins.

Adding a custom plugin involves creating a contianer image that will test for the conditions you want and provide the results back to sonobuoy, then tell sonobuoy to run your test.

## Prerequisites

* running Kubernetes cluster
* [sonobuoy](https://github.com/heptio/sonobuoy) installed

## How To

* Build and push image

```
    $ docker build -t [your/repo/name] .
    $ docker push [your/repo/name]
```

* Set your image. The `sonobuoy.yaml` manifest contains a configmap `sonobuoy-plugins-cm`. That configmap contains a file called `helloworld-config.yaml`.  In that config file replace `quay.io/lander2k2/sonobuoy-plugin-helloworld:0.2` with your repo name created in the previous step.

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
    $ mkdir results
    $ tar xvf [tar file] -C results
    $ cat results/plugins/helloworld/results/result
```

