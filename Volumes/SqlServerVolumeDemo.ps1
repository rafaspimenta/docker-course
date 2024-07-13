"Ensure container doesn't exist from previous execution..."
docker rm -f sqlserver-withvol

"Ensure our volume doesn't exist"
docker volume rm sqldb-data

"Creating SQL Server container using volume..."
docker run `
    --name sqlserver-withvol `
    -e "ACCEPT_EULA=Y" `
    -e "MSSQL_SA_PASSWORD=Elfara@260201" `
    -p 1433:1433 `
    -d `
    -v sqldb-data:/var/opt/mssql `
    mcr.microsoft.com/mssql/server:2022-latest

Read-Host 'Press enter to cointinue once database is seed:'


"Deleting the SQL Server container... "
docker rm -f sqlserver-withvol

"Listing all containers... "
docker volume ls

"Creating anothar SQL Server container using volume..."
docker run `
    --name sqlserver-withvol `
    -e "ACCEPT_EULA=Y" `
    -e "MSSQL_SA_PASSWORD=Elfara@260201" `
    -p 1433:1433 `
    -d `
    -v sqldb-data:/var/opt/mssql `
    mcr.microsoft.com/mssql/server:2022-latest