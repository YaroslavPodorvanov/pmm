download-exporters:
	cd ../../percona && git clone https://github.com/percona/node_exporter || cd ./node_exporter && git pull && go mod vendor
	cd ../../percona && git clone https://github.com/percona/mysqld_exporter || cd ./mysqld_exporter && git pull && go mod vendor
	cd ../../percona && git clone https://github.com/percona/rds_exporter || cd ./rds_exporter && git pull && go mod vendor
	cd ../../percona && git clone https://github.com/percona/postgres_exporter || cd ./postgres_exporter && git pull && go mod vendor
	cd ../../percona && git clone https://github.com/percona/mongodb_exporter || cd ./mongodb_exporter && git pull && go mod vendor
	cd ../../percona && git clone https://github.com/percona/proxysql_exporter || cd ./proxysql_exporter && git pull && go mod vendor
	cd ../../percona && git clone https://github.com/percona/azure_metrics_exporter || cd ./azure_metrics_exporter && git pull && go mod vendor
	ls -la ../../percona | grep _exporter

download-pmm:
	cd ../../percona && git clone https://github.com/percona/pmm || cd ./pmm && git pull && go mod vendor
	cd ../../percona && git clone https://github.com/percona/pmm-managed || cd ./pmm-managed && git pull && go mod vendor
	cd ../../percona && git clone https://github.com/percona/pmm-admin || cd ./pmm-admin && git pull && go mod vendor
	cd ../../percona && git clone https://github.com/percona/pmm-agent || cd ./pmm-agent && git pull && go mod vendor

install-exporters:
	cd ../../percona/azure_metrics_exporter && go install
	cd ../../percona/mongodb_exporter && go install
	cd ../../percona/mysqld_exporter && go install
	cd ../../percona/node_exporter && go install
	cd ../../percona/postgres_exporter && go install ./cmd/postgres_exporter/
	cd ../../percona/proxysql_exporter && go install
	cd ../../percona/rds_exporter && go install
	ls -la ~/.gvm/pkgsets/go1.17.7/global/bin/ | grep _exporter

download: download-exporters download-pmm