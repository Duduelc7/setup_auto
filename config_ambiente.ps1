# Definir a variÃ¡vel de ambiente JAVA_HOME
$javaHome = "C:\Program Files\Java\jre1.8.0_421"
[System.Environment]::SetEnvironmentVariable("JAVA_HOME", $javaHome, [System.EnvironmentVariableTarget]::Machine)
[System.Environment]::SetEnvironmentVariable("Path", $env:Path + ";$javaHome\bin", [System.EnvironmentVariableTarget]::Machine)
Write-Host "VariÃ¡vel de ambiente JAVA_HOME configurada para $javaHome"

# FunÃ§Ã£o para criar o database e executar o script SQL usando psql
function Create-DatabaseAndTables {
    param (
        [string]$dbName = "staging_educ_asp",
        [string]$dbUser = "postgres",
        [string]$dbPassword = "postgres",
        [string]$sqlFilePath = "C:\AS\scr_setup\sql_adventista.sql"
    )

    # Criar o database usando psql
    Write-Host "Criando database $dbName..."
    $createDbCommand = "CREATE DATABASE $dbName;"
    $createDbCommand | psql -U $dbUser -h localhost -c $createDbCommand

    # Executar o script SQL para criar as tabelas
    Write-Host "Criando tabelas no database $dbName..."
    $psqlCommand = "psql -U $dbUser -d $dbName -h localhost -f $sqlFilePath"
    cmd.exe /c $psqlCommand

    Write-Host "Tabelas criadas com sucesso no database $dbName."
}

# Criar o database e tabelas
Create-DatabaseAndTables