# Dica para aplicar sudo no terminal do Windows PowerShell

# Antes de tudo, declare essa função
function sudo {
    $cmd = Read-Host "Comando para o modo Super User Do" -Debug    
    if ($cmd -eq "su") {
        powershell start powershell -verb runAs
    }
    else{
        $cmd = $cmd + ";`npause"
        start powershell $cmd -verb runAs
    }
    
}

# Ao chamar sudo insira o comando desejado
sudo

# Exemplo de comando
# netsh wlan show profile "Nome_Da_Rede_Wifi" key=clear
