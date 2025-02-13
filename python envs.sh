# Isso é um exemplo de criação e uso de ambientes Python para testes no Linux
# Criação do ambiente
python3 -m venv libs

# Ativar o ambiente
source libs/bin/activate

# Instalar bibliotecas
pip install pycryptodome
# Todas as bibliotecas serão instaladas nesse ambiente, evitando quebrar a estrutura de pacotes

# Desativar o ambiente
deactivate