## Comandos rápidos para Kali Linux

## Scripts

- ### [Verificando máquinas ativas na rede](https://github.com/ThiagoSousa81/Kali-Linux/blob/main/script.sh)

## Exemplos

### Ajuda sobre o comando
    # Obter ajuda
    comando --help

### Listando diretórios
    
    # Listando todos em formato de lista
    ls -al

### Arquivos

    # Criando um arquivo vazio
    touch teste.txt

    # Mandando saída do echo para arquivo
    echo texto > text.txt

    # Mandando saída do echo para próxima linha do arquivo
    echo texto >> text.txt

    # Mostrando conteúdo
    cat text.txt

    # Deletando o arquivo
    rm text.txt

Obs.: o comando ```cat``` foi feito para concatenar textos e não pra isso, mas é usado popularmente

### Diretórios

    # Localizando onde estás
    pwd

    # Criando pasta
    mkdir folder

    # Entrando e saindo da pasta
    cd folder
    cd..

    # Apagando a pasta
    rm -rf folder

Use o comando ```history``` para ver o historico de comandos

### Editores de texto

    # No Kali Linux existem esses 3 editores
    vi file1.txt
    vim file2.txt
    nanofile3.txt

### Processos

    # Verificando todos processos ativos
    ps -aux
    # verificando os processos do root
    ps -aux | grep root
    # Derrubando um processo
    Kill $PId

Obs.: O ```| grep``` serve principalmente para realizar filtros numa lista muito grande através de fragmentos de texto. <br>O seu correspondente no Windows PowerShell é ```| findStr```.
    

