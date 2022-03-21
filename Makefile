download-exporters:
	cd ../../percona && git clone https://github.com/percona/node_exporter || cd ./node_exporter && git pull
	cd ../../percona && git clone https://github.com/percona/mysqld_exporter || cd ./mysqld_exporter && git pull
	cd ../../percona && git clone https://github.com/percona/rds_exporter || cd ./rds_exporter && git pull
	cd ../../percona && git clone https://github.com/percona/postgres_exporter || cd ./postgres_exporter && git pull
	cd ../../percona && git clone https://github.com/percona/mongodb_exporter || cd ./mongodb_exporter && git pull
	cd ../../percona && git clone https://github.com/percona/proxysql_exporter || cd ./proxysql_exporter && git pull
	ls -la .. | grep _exporter