# Dica para aplicar sudo su no terminal do Windows PowerShell

# Antes de tudo, declare essa função
function sudo {
    $cmd = Read-Host "Comando para o modo Super User Do" -Debug
    $cmd = $cmd + ";`npause"
    start powershell $cmd -verb runAs
}

# Ao chamar sudo insira o comando desejado
sudo