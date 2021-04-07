docker build -t tvdgnr/spark-standalone:3.0.1 -t tvdgnr/spark-standalone:latest \
--build-arg spark_version=3.0.1 \
--build-arg scala_version=2.12.12 \
--no-cache .

docker push tvdgnr/spark-standalone:3.0.1
docker push tvdgnr/spark-standalone:latest

docker build -t tvdgnr/spark-standalone:2.4.7 \
--build-arg spark_version=2.4.7 \
--no-cache .

docker push tvdgnr/spark-standalone:2.4.7

docker build -t tvdgnr/spark-standalone:2.4.6 \
--build-arg spark_version=2.4.6 \
--no-cache .

docker push tvdgnr/spark-standalone:2.4.6

docker build -t tvdgnr/spark-standalone:2.4.5 \
--build-arg spark_version=2.4.5 \
--no-cache .

docker push tvdgnr/spark-standalone:2.4.5

docker build -t tvdgnr/spark-standalone:2.4.4 \
--build-arg spark_version=2.4.4 \
--no-cache .

docker push tvdgnr/spark-standalone:2.4.4
