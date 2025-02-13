# Isso é um exemplo de criação e uso de ambientes Python para testes no Linux
# Criação do ambiente
python3 -m venv libs

# Ativar o ambiente
source libs/bin/activate

# Instalar bibliotecas
pip install pycryptodome

# Desativar o ambiente
deactivate