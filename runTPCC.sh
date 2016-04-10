java -Xmx1024m -cp `run/classpath.sh` -Dlog4j.configuration=log4j.properties com.oltpbenchmark.DBWorkload -b tpcc -s 1 -c config/sample_tpcc_config.xml -o tpcc_result -d tpcc_report --dialects-export true --execute true

