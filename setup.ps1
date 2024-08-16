function Install-Chocolatey {
    if (-not (Get-Command choco.exe -ErrorAction SilentlyContinue)) {
        Write-Host "Chocolatey não encontrado. Instalando o Chocolatey..."
        Set-ExecutionPolicy Bypass -Scope Process -Force;
        [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12;
        iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'));
        Write-Host "Chocolatey instalado com sucesso."
    } else {
        Write-Host "Chocolatey já está instalado."
    }
}

function Install-Package {
    param (
        [string]$packageName,
        [string]$installParams = ""
    )
    
    Write-Host "Instalando $packageName..."
    $command = "choco install $packageName -y --force --allow-empty-checksums $installParams"
    Invoke-Expression $command
    if ($?) {
        Write-Host "$packageName instalado com sucesso."
    } else {
        Write-Host "Erro ao instalar $packageName."
    }
}

Install-Chocolatey

# Instalar as ferramentas
Install-Package "jre8"
Install-Package "dbeaver"
Install-Package "postgresql" '/params:"/Password=SuaSenhaAqui"'
Install-Package "powerbi"
Install-Package "powerbigateway"


# Baixar o Pentaho
Write-Host "Baixando Pentaho Data Integration PDI CE..."
$downloadUrl = 'https://github.com/ambientelivre/legacy-pentaho-ce/releases/download/pdi-ce-9.4.0.0-343/pdi-ce-9.4.0.0-343.zip'
$outputFile = "$env:TEMP\pdi-ce-9.4.0.0-343.zip"
Invoke-WebRequest -Uri $downloadUrl -OutFile $outputFile
if (Test-Path $outputFile) {
    Write-Host "Pentaho Data Integration PDI CE baixado com sucesso em $outputFile"
} else {
    Write-Host "Erro ao baixar Pentaho Data Integration PDI CE."
}