1. Pull the SQL Server Docker image

    docker pull mcr.microsoft.com/mssql/server:2022-latest

2. Run the container    

    docker run -e 'ACCEPT_EULA=Y' \
           -e 'SA_PASSWORD=DBtest123@' \
           -p 1433:1433 \
           --name mssql_container \
           -d mcr.microsoft.com/mssql/server:2022-latest

    Explanation:

        SA_PASSWORD: Must be at least 8 characters long, include uppercase, lowercase, numeric, and special characters.

        -p 1433:1433: Maps the default SQL Server port to your local machine.

        --name mssql_container: You can name the container anything you want.

        -d: Runs the container in the background.

3. Connect to SQL Server        
    SQL Server Management Studio (SSMS) on Windows.

    Azure Data Studio (cross-platform).

    Or connect from terminal:

    docker exec -it mssql_container /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'YourStrong!Passw0rd'
    sudo docker exec -it a3ea8dcf59e3 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'DBtest123@'

Optional: Persist Data with Docker Volume   :

    docker run -e 'ACCEPT_EULA=Y' \
           -e 'SA_PASSWORD=YourStrong!Passw0rd' \
           -p 1433:1433 \
           --name mssql_container \
           -v mssql_data:/var/opt/mssql \
           -d mcr.microsoft.com/mssql/server:2022-latest

