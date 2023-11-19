# Monitorando saída de texto

# Criando o arquivo
touch /tmp/teste.txt

# Lendo todas as alterações que acontecem no final do arquivo

tail -f /tmp/teste.txt

# Se outro terminal for aberto e executado o comando "echo Texto >> /tmp/teste.txt" o texto do arquivo é anexado no outro terminal
# É possível colocar variáveis tbm
# Execute isso em outro terminal para entender
# NOME="Thiago Sousa"
# echo $NOME >> /tmp/teste.txt