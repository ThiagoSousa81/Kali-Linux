## Avaliação do curso _Kali Linux for Beginners_

### Objetivo da avaliação

É disponibilizado um arquivo encriptado na extensão ```.ext```. O objetivo é coletar a senha no conteúdo desse arquivo. 

Dica: A senha começa com SEC-17

### Metodologia de resolução

#### Antes de tudo, deve-se ativar o usuário ```root``` no linux

     sudo su

1 - Baixar o arquivo [```me_renomeia.ext```](https://github.com/ThiagoSousa81/Kali-Linux/blob/main/me_renomeia.ext) para realizar a intrusão

2 - Utilizar a ferramenta ```zip2john``` para coletar a hash da senha do arquivo.

3 - Armazenar a hash num arquivo chamado ```hash.txt```

    vim hash.txt

4 - Utilizar o John The Ripper para quebrar a hash da seguinte forma:

    john --format=pkzip hash.txt --wordlist=/usr/share/wordlists/rockyou.txt

A wordlist utilizada é uma padrão no Kali Linux que já possui diversas possibilidades de senhas comuns.

O formato do arquivo como ```pkzip``` foi descoberto da seguinte forma:

    file me_renomeia.ext

5 - Logo após obter a senha é só exportar o conteúdo do ZIP, e inserir a senha gerada pelo ```john```

    unzip me_renomeia.ext
    
6 - Quando o arquivo é exportado, em seu conteúdo existe um arquivo sem extensão, que passando pelo comando ```file``` descobrimos que se trada de um ```.elf``` executável do Linux

    file eu_tenho_a_senha

7 - Executamos o arquivo da seguinte forma:

    ./eu_tenho_a_senha

Nisso é mostrado o seguinte conteúdo no console:

    Senha:SEC17-29928393848AB

#### Agora é sua vez! Baixe o [arquivo](https://github.com/ThiagoSousa81/Kali-Linux/blob/main/me_renomeia.ext), faça o teste e verifique se o resultado foi o mesmo que o meu