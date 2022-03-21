# PMM

Percona monitoring and management shortcuts

## Local setup
Install exporters:
* [node_exporter](https://github.com/percona/node_exporter)
* [mysqld_exporter](https://github.com/percona/mysqld_exporter)
* [rds_exporter](https://github.com/percona/rds_exporter)
* [postgres_exporter](https://github.com/percona/postgres_exporter)
* [mongodb_exporter](https://github.com/percona/mongodb_exporter)
* [proxysql_exporter](https://github.com/percona/proxysql_exporter)

Run `make download-exporters` to download all exporters

## Architecture
* https://www.percona.com/doc/percona-monitoring-and-management/2.x/details/architecture.html

![PMM Architecture Client Server](https://www.percona.com/doc/percona-monitoring-and-management/2.x/_images/PMM_Architecture_Client_Server.jpg)