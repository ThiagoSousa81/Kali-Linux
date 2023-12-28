# O objetivo é recriar a estrutura de diretórios sistema operacional Windows
echo('Criando Unidade de Armazenamento...')
mkdir 'C:'
cd ./C:
echo('Criando pastas específicas do sistema...')
mkdir 'Program Files'
echo('Program Files criado')

mkdir 'Program Files x86'
echo('Program Files x86 criado')

mkdir Windows
echo('Windows criado')
cd Windows

mkdir system32
echo('system32 criado')
cd system32

echo('Criando arquivos do sistema...')
echo echo('Meu sistema Windows') > System.sh
echo echo('Meu Prompt de Comando') > cmd.sh
echo('Sistema criado com sucesso!')

cd ..
cd ..
echo('Criando diretórios de uso...')
mkdir Users
cd Users
echo('Criando Administrador...')
mkdir Administrator
echo('Criando Usuário comum...')
mkdir User
cd User
mkdir Documents
mkdir Images
mkdir Downloads
mkdir Videos
mkdir Musics

cd ../..
echo('Executando o sistema...')
sh Windows/system32/System.sh

