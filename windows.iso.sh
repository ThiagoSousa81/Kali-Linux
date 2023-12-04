# O objetivo é recriar a estrutura de diretórios sistema operacional Windows
echo('Criando Unidade de Armazenamento')
mkdir 'C:'
cd ./C:
echo('Criando pastas específicas do sistema: ')
mkdir 'Program Files'
echo('Program Files criado')

mkdir 'Program Files x86'
echo('Program Files x86 criado')

mkdir Windows
echo('Windows criado')
cd Windows
mkdir system32
cd system32

touch System.sh

