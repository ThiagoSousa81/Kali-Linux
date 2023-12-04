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
echo 'system32 criado'

cd system32

echo('Criando arquivos do sistema:')
echo echo('Meu sistema Windows') > System.sh
echo echo('Meu Prompt de Comando') > cmd.sh
echo('Sistema criado com sucesso!')


