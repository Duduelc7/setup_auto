$javaHome = "C:\Program Files\Java\jre1.8.0_421"
[System.Environment]::SetEnvironmentVariable("JAVA_HOME", $javaHome, [System.EnvironmentVariableTarget]::Machine)
[System.Environment]::SetEnvironmentVariable("Path", $env:Path + ";$javaHome\bin", [System.EnvironmentVariableTarget]::Machine)
Write-Host "Variavel de ambiente JAVA_HOME configurada para $javaHome"

function Create-DatabaseAndTables {
    param (
        [string]$dbName = "staging_teste",
        [string]$dbUser = "postgres",
        [string]$dbPassword = "postgres",
        [string]$sqlFilePath = "C:\Users\GABRIELA\Desktop\setup_auto\sql_teste.sql"
    )

    Write-Host "Criando database $dbName..."
    $createDbCommand = "CREATE DATABASE $dbName;"
    $createDbCommand | psql -U $dbUser -h localhost -c $createDbCommand

    Write-Host "Criando tabelas no database $dbName..."
    $psqlCommand = "psql -U $dbUser -d $dbName -h localhost -f $sqlFilePath"
    cmd.exe /c $psqlCommand

    Write-Host "Tabelas criadas com sucesso no database $dbName."
}

Create-DatabaseAndTables