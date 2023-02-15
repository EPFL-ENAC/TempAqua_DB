# TempAqua_DB

Deploy a dockerized PostGIS db for the TempAqua project

## Only for contributors - Prepare the environment
Run `npm install` to install the dependencies of the project

## Deploy the Dockerized PostGIS db
We use docker to install PostgreSQL / PostGIS. It can be installed on a local machine and a remote server.

Installation steps :

1. As the database has to be accessible from [QFieldCloud servers](https://docs.qfield.org/reference/qfieldcloud/specs/),
    we prefer to use a SSL certificate to secure the connection to the database.
    You can use a valid certificate (but this part is not described here), or you can generate a self-signed certificate:
    
    `make generate-selfsigned-cert`

    The certificate will be generated in the `cert` folder (certificate.crt + certificate.key).

2. Copy the `.env_template` into `.env` and edit its content with the PostgreSQL admin credentials *POSTGRES_USER* and *POSTGRES_PASSWORD*
3. Run docker-compose
   
   `make run`

Upon completion of the previous tasks, you will have the ability to connect to the PostgreSQL database utilizing your preferred database administration tool. Sample dataset is loaded during this intallation process.

DB acces and crendentials :

- Address : localhost or the name/IP of the machine you install PsotgeSQL in.

- DB name : tempaqua

- Schema : tempaqua_sample

- DB Admin User : the one define in the .env file

- DB Admin password: the one define in the .env file

## Backup the database

