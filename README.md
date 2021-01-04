# spark-standalone docker

Docker images to for a local spark node for development purpose.

Currently supported versions:
* Spark 3.0.1 for Hadoop 2.7+ with OpenJDK 8 (latest)
* Spark 2.4.7 for Hadoop 2.7+ with OpenJDK 8
* Spark 2.4.6 for Hadoop 2.7+ with OpenJDK 8
* Spark 2.4.5 for Hadoop 2.7+ with OpenJDK 8
* Spark 2.4.4 for Hadoop 2.7+ with OpenJDK 8

### Run container
To start a Spark node:

If you just run the container, the spark shell will be automatically started.

``` bash
docker run -ti --rm ragn/spark-standalone:<tag>
```

You may add parameters to load packages.

``` bash
docker run -ti --rm ragn/spark-standalone:latest --packages org.apache.spark:spark-avro_2.12:3.0.1
```

Aditionally there are already the avro tools in version 1.9.2 included. You can run them like this.

``` bash
docker run -ti --rm ragn/spark-standalone:latest bash
avro-tools -h
```
