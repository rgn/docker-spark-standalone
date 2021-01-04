# spark-standalone docker

Docker images to for a local spark node for development purpose.

Currently supported versions:
* Spark 2.4.6 for Hadoop 2.7+ with OpenJDK 8
* Spark 2.4.5 for Hadoop 2.7+ with OpenJDK 8
* Spark 2.4.4 for Hadoop 2.7+ with OpenJDK 8

### Run container
To start a Spark node:

``` bash
docker run -ti ragn/spark-standalone:<tag> /bin/bash
```

https://img.shields.io/github/workflow/status/tvdgnr/docker-spark-standalone/CI%20to%20Docker%20Hub?style=plastic
