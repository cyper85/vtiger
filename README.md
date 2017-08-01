# vtiger

Setup your Vtiger docker container. The container does **NOT** provide the vtiger
applicaiton files - you'll have to deliver it by yourself. You don't have to provide
the database for vtiger, but you can if you want to use your existing data.

Please, check the `docker-compose.yml` file and you'll know how to use it.

## Docker-Compose

### Exposed port configuration
```
    ports:
      - 8777:80
```
By default, the vtiger container will be listening on your host on port 8777. Please change the value as you like.

### Volumes

As said before, we don't provide the vtiger application files. You have to
provide it by yourself. Please download the [VtigerCRM](https://sourceforge.net/projects/vtigercrm/files/), unpack it and provide the directory path as `/your/path/to/vtiger/files:/vtiger`

Docker-Compose also starts the MySQL container. You can customize your DB connection parameters in the `docker-compose.yml` file.

**NOTE**: Please, note that you'll have to adjust you vtiger `config.inc.php` file and set the proper values to connect to the database, and so on. In the near future we will implement the neccesary changes in the docker's entrypoint script, so you won't have to do any manual changes in the crm files.

## Running

To launch the containers simply execute:
```
docker-compose up -d
```
