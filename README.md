# docker-pgdump-swift

A docker image which permit to run a pg_dump and push it on swift object storage

Tools installed:
* postgres (this image id builded from official posgtres image)
* python-swiftclient

Details about versionning:
* versionning of this docker image follow postgres version
* swift version is the last avaible during build in pypi repository

## Environment variables

| Name | Description | Mandatory | Default |
| ---- | ----------- | --------- | ------- |
| DB_HOST | Host/IP of database server | True | *n/a* |
| DB_PORT | Port of database server | False | 5432 |
| DB_NAME | Name of the database to dump | True | *n/a* |
| DB_USER | User name of the database | True | *n/a* |
| DB_PASS | Password of the database user | True | *n/a* |
| OS_AUTH_URL | OpenStack auth url  | True | *n/a* |
| OS_IDENTITY_API_VERSION | OpenStack auth version | False | 3 |
| OS_USER_DOMAIN_NAME | *todo* | False | Default |
| OS_PROJECT_DOMAIN_NAME | *todo* | False | Default |
| OS_TENANT_ID | OpenStack tenant ID | True | *n/a* |
| OS_TENANT_NAME | OpenStack tenant name | True | *n/a* |
| OS_USERNAME | OpenStack user name | True | *n/a* |
| OS_PASSWORD | OpenStack user password | True | *n/a* |
| OS_REGION_NAME | OpenStack region name | True | *n/a* |
| SWIFT_CONTAINER | Name of storage container | True | *n/a* |
| BACKUP_FILE | Name of the backup file without extension | True | *n/a* |
