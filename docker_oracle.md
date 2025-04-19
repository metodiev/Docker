For X64_X84 Clone the Oracle Docker Images Repository 

  docker pull grabow/oracle-xe

Run the Oracle Database container  

    docker run -d --name oracle-xe \
    -p 1521:1521 \
    -p 5500:5500 \
    -e ORACLE_PASSWORD=DBtest123 \
    grabow/oracle-xe
    
      -- docker run -d --name oracle-xe  -p 1521:1521 -p 5500:5500 -e ORACLE_PASSWORD=DBtest123 grabow/oracle-xe  

    Username: SYS, Service name: xe

For Mac OS Silicon ARM/Mx Chips

    git clone https://github.com/oracle/docker-images
    
    Download the oracle Image for Arm from the official Oracle site:

    https://oracle.com/database/technologies/oracle19c-linux-arm64-downloads.html

    Movethe LINUX.ARM64_1919000_db_home.zip to

    cd docker-images/OracleDatabase/SingleInstance/dockerfiles/19.3.0

    Move to /dockerfiles/ and build the conteiner:

    ./buildContainerImage.sh -v 19.3.0 -e

    Run the Container
    docker run -d --name oracle19 -e ORACLE_PWD=DBtest123 -p 1521:1521 oracle/databaseL19.3.0-ee

    The container Username is : SYS, the container SID is ORCLCDB

Usethat command if you use a Docker container in M chips
    alter system set db_create_file_dest = '/opt/oracle/oradata/ORCLCDB' scope=both
    alter session set "_ORACLE_SCRIPT"=true
    CREATE USER <name> IDENTIFIED BY <password> CONTAINER=ALL
    grant create any table to <name>>;   

Usefull commands 

    sudo docker exec -it <container_id> bash
    You can use resetPaswword into the container followe by the password to ensure that the password has been reset