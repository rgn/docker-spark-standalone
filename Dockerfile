FROM alpine:3.11
LABEL maintainer="Ralf Gnädinger <ralf.gnaedinger@trivadis.com>"

ARG spark_version="2.4.6"
ARG hadoop_version="2.7"
ARG scala_version="2.11.12"
ARG sbt_version="1.3.12"

ENV SPARK_VERSION=${spark_version}
ENV HADOOP_VERSION=${hadoop_version}
ENV SCALA_VERSION=${scala_version}
ENV SBT_VERSION=${sbt_version}

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/jre
ENV SPARK_HOME /spark
ENV SCALA_HOME /scala
ENV SBT_HOME /scala
ENV PATH "$PATH:/spark/bin:/scala/bin:/sbt/bin"

RUN apk update \
	&& apk upgrade \
	&& apk add openjdk8 bash tar

RUN wget --no-verbose https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz -O /tmp/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
	&& tar xzf /tmp/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
	&& rm /tmp/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
	&& ln -s /spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} /spark

RUN wget --no-verbose https://downloads.typesafe.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz -O /tmp/scala-$SCALA_VERSION.tgz \
	&& tar xzf /tmp/scala-$SCALA_VERSION.tgz \
	&& rm /tmp/scala-$SCALA_VERSION.tgz \
	&& ln -s scala-$SCALA_VERSION /scala

RUN wget --no-verbose https://piccolo.link/sbt-$SBT_VERSION.tgz -O /tmp/sbt-$SBT_VERSION.tgz \
	&& tar xzf /tmp/sbt-$SBT_VERSION.tgz \
	&& rm /tmp/sbt-$SBT_VERSION.tgz