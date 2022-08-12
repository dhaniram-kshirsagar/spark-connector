CONNECTOR_VERSION=$(cat ../../version.properties | grep ${connector-version} | cut -d'=' -f2)

spark-submit --master spark://spark:7077 --driver-memory 2g target/scala-2.12/spark-vertica-connector-scala-examples_2.12-"$CONNECTOR_VERSION".jar "$@"