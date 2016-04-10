# OLTPBench

## Build

Use `ant`

## Run

Use `./oltpbenchmark` with arguments, or just type `./runTPCC.sh`

An example of `./runTPCC.sh`:

`java -Xmx1024m -cp `run/classpath.sh` -Dlog4j.configuration=log4j.properties\ 
com.oltpbenchmark.DBWorkload\
-b tpcc\
-s 1\
-c config/sample_tpcc_config.xml\
-o tpcc_result\
-d tpcc_report\
--clear true\
--create true\
--load true\
--execute true`

According to the source code in `oltpbench/src/com/oltpbenchmark/DBWorkload.java`:

* `--clear`: Clear all existing tables;

* `--create`: Create database which is defined in the tpcc_config.xml;

* `--load`: Load/Generate random data into your database;

* `--execute`: Execute TPCC procedures to benchmark your database.

Find Loader procedure in: `oltpbench/src/com/oltpbenchmark/benchmarks/tpcc/TPCCLoader.java`.

Find TPCC procedures in:

* `oltpbench/src/com/oltpbenchmark/benchmarks/tpcc/procedures/Delivery.java`

* `oltpbench/src/com/oltpbenchmark/benchmarks/tpcc/procedures/NewOrder.java`

* `oltpbench/src/com/oltpbenchmark/benchmarks/tpcc/procedures/OrderStatus.java`

* `oltpbench/src/com/oltpbenchmark/benchmarks/tpcc/procedures/Payment.java`

* `oltpbench/src/com/oltpbenchmark/benchmarks/tpcc/procedures/StockLevel.java`

## Other README

[![Build Status](https://travis-ci.org/oltpbenchmark/oltpbench.png)](https://travis-ci.org/oltpbenchmark/oltpbench)

Benchmarking is incredibly useful, yet endlessly painful. This benchmark suite is the result of a group of
Phd/post-docs/professors getting together and combining their workloads/frameworks/experiences/efforts. We hope this
will save other people's time, and will provide an extensible platform, that can be grown in an open-source fashion. 

OLTPBenchmark is a multi-threaded load generator. The framework is designed to be able to produce variable rate,
variable mixture load against any JDBC-enabled relational database. The framework also provides data collection
features, e.g., per-transaction-type latency and throughput logs.

Together with the framework we provide the following OLTP/Web benchmarks:
  * [TPC-C](http://www.tpc.org/tpcc/)
  * Wikipedia
  * Synthetic Resource Stresser 
  * Twitter
  * Epinions.com
  * [TATP](http://tatpbenchmark.sourceforge.net/)
  * [AuctionMark](http://hstore.cs.brown.edu/projects/auctionmark/)
  * SEATS
  * [YCSB](https://github.com/brianfrankcooper/YCSB)
  * [JPAB](http://www.jpab.org) (Hibernate)
  * [CH-benCHmark](http://www-db.in.tum.de/research/projects/CHbenCHmark/?lang=en)
  * [Voter](https://github.com/VoltDB/voltdb/tree/master/examples/voter) (Japanese "American Idol")
  * [SIBench](http://sydney.edu.au/engineering/it/~fekete/teaching/serializableSI-Fekete.pdf) (Snapshot Isolation)
  * [SmallBank](http://ses.library.usyd.edu.au/bitstream/2123/5353/1/michael-cahill-2009-thesis.pdf)
  * [LinkBench](http://people.cs.uchicago.edu/~tga/pubs/sigmod-linkbench-2013.pdf)

This framework is design to allow easy extension, we provide stub code that a contributor can use to include a new
benchmark, leveraging all the system features (logging, controlled speed, controlled mixture, etc.)

## Publications

If you are using this framework for your papers or for your work, please cite the paper:

[OLTP-Bench: An extensible testbed for benchmarking relational databases](http://www.vldb.org/pvldb/vol7/p277-difallah.pdf) D. E. Difallah, A. Pavlo, C. Curino, and P. Cudre-Mauroux. In VLDB 2014.

Also, let us know so we can add you to our [list of publications](http://oltpbenchmark.com/wiki/index.php?title=Publications_Using_OLTPBenchmark).

Please visit the project homepage for anything other than source code: <http://oltpbenchmark.com>

## Dependencies

+ Java (+1.6)
