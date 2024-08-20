# Documentação do Script de Automação de Setup

## Visão Geral

Este repositório contém scripts em PowerShell desenvolvidos para automatizar a configuração de ferramentas essenciais de desenvolvimento e a criação de um banco de dados PostgreSQL com suas tabelas. O objetivo principal desses scripts é simplificar a instalação de várias ferramentas utilizando o Chocolatey, um gerenciador de pacotes para Windows, e automatizar a criação de um banco de dados e a estrutura das tabelas necessárias.

## Scripts

### 1. `setup.ps1`

Este script é responsável por instalar as ferramentas de software necessárias utilizando o Chocolatey e por baixar arquivos adicionais necessários para o ambiente.

#### Funções Principais:

- **Install-Chocolatey**
  - Verifica se o Chocolatey está instalado no sistema. Caso não esteja, instala o Chocolatey.
  - O Chocolatey é um gerenciador de pacotes para Windows que simplifica a instalação de software.

- **Install-Package**
  - Instala um pacote especificado usando o Chocolatey. Recebe o nome do pacote e parâmetros opcionais de instalação como argumentos.
  - Esta função instala diversos pacotes de software, incluindo:
    - Java Runtime Environment 8 (JRE8)
    - DBeaver
    - PostgreSQL com senha pré-definida
    - Power BI
    - Power BI Gateway

- **Download do Pentaho Data Integration (PDI)**
  - Baixa o arquivo ZIP do Pentaho Data Integration Community Edition (PDI CE) de uma URL especificada e salva-o no diretório temporário.

#### Uso:

Para executar este script, utilize o seguinte comando em um terminal PowerShell:

```
.\setup.ps1
```
### 2. `config_ambiente.ps1`

Este script configura variáveis de ambiente necessárias para o Java e automatiza a criação de um banco de dados PostgreSQL e suas tabelas associadas.

#### Etapas Principais:

- **Configurar Variáveis de Ambiente para Java**
  - Configura a variável de ambiente `JAVA_HOME` para apontar para o diretório do Java instalado.
  - Atualiza a variável de ambiente `Path` para incluir o diretório binário do Java.

- **Create-DatabaseAndTables**
  - Automatiza a criação de um banco de dados PostgreSQL e suas tabelas.
  - Parâmetros:
    - `dbName`: Nome do banco de dados a ser criado (padrão: `staging_teste`).
    - `dbUser`: Nome de usuário do PostgreSQL (padrão: `postgres`).
    - `dbPassword`: Senha do PostgreSQL (padrão: `postgres`).
    - `sqlFilePath`: Caminho para o arquivo SQL que contém as definições das tabelas (padrão: `C:\Users\Desktop\setup_auto-main\sql_teste.sql`).
  - Esta função cria o banco de dados e, em seguida, executa o script SQL para criar as tabelas necessárias.

#### Uso:

Para executar este script, utilize o seguinte comando em um terminal PowerShell:
```ps1
.\config_ambiente.ps1
```

## Como Usar

1. **Clonar o Repositório:**
   - Clone este repositório para sua máquina local.

2. **Executar o Script de Configuração:**
   - Abra um terminal PowerShell e navegue até o diretório que contém os scripts.
   - Execute `setup.ps1` para instalar todas as ferramentas necessárias e baixar os arquivos necessários.

3. **Configurar o Ambiente:**
   - Após rodar o `setup.ps1`, execute `config_ambiente.ps1` para configurar as variáveis de ambiente e criar o banco de dados e as tabelas.

4. **Verificar a Instalação:**
   - Após executar ambos os scripts, verifique se as ferramentas foram instaladas e se o banco de dados foi configurado corretamente.

## Requisitos

- Sistema operacional Windows
- PowerShell
- Conexão com a internet para baixar pacotes e arquivos

## Observações

- Certifique-se de que o PowerShell esteja sendo executado com privilégios administrativos para permitir a instalação de software e a configuração de variáveis de ambiente.
- Modifique os parâmetros dos scripts conforme necessário para adequá-los ao seu ambiente e requisitos.

Esta automação de setup tem como objetivo facilitar o processo de configuração de um ambiente de desenvolvimento, reduzindo etapas manuais, economizando tempo e evitando possíveis erros durante a configuração.


