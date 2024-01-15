# Dica para aplicar sudo su no terminal do Windows PowerShell

function sudosu {
    powershell start powershell -verb runAs
}

sudosu