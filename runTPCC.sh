java -Xmx1024m -cp `run/classpath.sh` -Dlog4j.configuration=log4j.properties com.oltpbenchmark.DBWorkload -b tpcc -s 1 -c config/sample_tpcc_config.xml -o tpcc_result -d tpcc_report --clear true --create true --load true --execute true --histograms true

