## Comandos rápidos para Kali Linux

## Scripts

- ### [Verificando máquinas ativas na rede](https://github.com/ThiagoSousa81/Kali-Linux/blob/main/script.sh)

- ### [Lendo um arquivo progressivamente](https://github.com/ThiagoSousa81/Kali-Linux/blob/main/writeOutput.sh)

- ### [Recriando a estrutura do Windows no Linux](https://github.com/ThiagoSousa81/Kali-Linux/blob/main/windows.iso.sh)

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

### Permissões

    # Verificando permissões dos arquivos
    ls -al
    # Editando as permissões de um item
    chmod 777 teste.txt
    # rwx-rwx-rwx
    # Dono-Grupo-Outros

    # Ainda é possível definir propriedades específicas com esse comando
    # Permitindo para todos as permissões
    chmod ugo+rwx teste.txt

    # Negando para todos as permissões
    chmod ugo-rwx teste.txt


Obs.: A definição dos valores ocorre segundo o sistema de numeração octal.

| Valor | Permissão |
| --- | --- |
| 0 | --- |
| 1 | --x |
| 2 | -w- |
| 3 | -wx |
| 4 | r-- |
| 5 | r-x |
| 6 | rw- |
| 7 | rwx |

    # É possível detectar todos os grupos através do arquivo abaixo
    cat /etc/group
    
    # Veja todos os usuários por esse arquivo
    cat /etc/passwd

    # Para identificar os grupos faça assim
    groups root

### Modo Recursivo
Uma forma na qual as propriedades de acesso aplicadas ao elemento pai são passadas para os filhos

    # Veja como é feito na prática

    chmod financeiro 777 -R

Todos os usuários irão acessar os arquivos do financeiro. Se fosse feito sem o ```-R``` outros usuário só poderiam ler.


### Configurações de rede

    # Enquando no windows digita-se ipconfig /all, no Linux se faz assim...

    sudo ifconfig

É fácil alterar o IP de uma placa de rede no Linux

    # Opcional, mas conheça o local onde ficam as propriedades de rede do Kali
    cd /etc/network/

    # Visualize antes
    sudo ifconfig
    # Altere
    sudo ifconfig eth0 192.168.0.25 netmask 255.255.255.0
    # Visualize depois
    sudo ifconfig

É possível também desligar placas de rede específicas

    # Desligando uma placa de rede
    sudo ifconfig eth0 down
    # Ligando uma placa de rede
    sudo ifconfig eth0 up


### Configurações de DNS interno

    vim /etc/hosts

### Instalação de pacotes

    sudo dpkg -i nome_do_pacote.deb

Alguns arquivos podem estar compactados. Pode-se usar o ```tar``` ou ```gzip```

Para baixar arquivos da internet pode-se usar ```wget``` ou ```git clone```, se o conteúdo estiver no Git-Hub



## Referências

- [Diferenças entre Bash e PowerShell](https://linuxuniverse.com.br/linux/bashps)
- [Instalando PowerShell no Linux](https://matteoguadrini.github.io/posts/linux-and-powershell/)




