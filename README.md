SHELL
============

## Introdução

Esse conteúdo é uma breve explicação do que é o SHELL e como utilizá-lo,
originalmente feito por Pedro H. P. Souza ([@predoff](http://twitter.com/predoff)) para ser apresentado na [Tagview](http://tagview.com.br).

## O que é?

Shell é uma interface que permite a interação do usuário com o sistema operacional (Kernel) através de linhas de comandos.

O primeiro shell Unix, o Thompson shell foi criado por Ken Thompson, uma das principal influência do UNIX.
O SHELL que usamos normalmente é o bash, Bourne-again shell, escrito por Brian Fox para o Projeto GNU, isso quer dizer
que se trata de um software livre.

Para vermos qual shell estamos utilizando digite: `$ echo $SHELL`

Listar shell disponíveis: `$ cat /etc/shells`

## Vantagens e desvantagens

- Possui boas ferramentas para manipulação de arquivos e troca de dados de um programa para outro.
- Obtenção rápida de informações sobre o SO.
- Velocidade de execução lenta (Precisa abrir um novo processo quase toda vez que um comando é executado).

## Variáveis de ambiente

São variáveis geradas pelo sistema operacional ou pelo próprio usuário.
Elas não possuem tipo, aceitam número, caracter, string.

### Variáveis globais

Acessíveis em todos os SHELLS. Para listar as variáveis disponíveis digite `$ env` ou `$ printenv`

Exemplos:

- PATH (Lista de caminhos de diretórios, para serem usados de fora da pasta corrente);
- HOME (Exibe o diretório raiz);
- SHELL (Shell padrão).

### Variáveis locais

Acessível apenas no escopo definido. Para lista as variáveis locais digite `$ set`.
Caso queira que essa variável seja acessível em um script use `$ export`.

Criando variável: `$ TESTE=1`
Imprimir variável: `$ echo $TESTE=1`

Exemplo de `export`:

    $ export HELLO="oi"
    $ sh hello.sh

## Ajuda

O Shell disponibiliza comandos caso precise saber detalhes ou dúvidas de como utilizar certo comando. São eles:

- `man` ou `info`: Exibe o manual do comando.
- `whatis`: Exibe pequena descrição sobre o comando.
- `apropos`: Busca na descrição (whatis) o termo pedido.
- `whereis`: Exibe o diretório binário.

Exemplos:

    $ man ruby
    $ apropos ruby
    $ whereis ruby

## Chaves

São opções adicionadas ao comando para que executem algo especial.
Não é possível a fusão de chaves que possuem parâmetro, ou mais de uma letra, ou quando chave é com menos menos.

Exemplos:

    $ ls -l
    $ ls -lh
    $ ls -l -h
    $ grep -r --color Shell .

## Concatenação

Utilizando o caracter ponto e vírgula é possível concatenar comandos, ou seja, executar um após o outro.

Exemplo:

    cd exercicios ; cat oi.txt ;

## Conexão (Pipeline)

Conectar comandos é executar um comando baseado no resultado gerado de outro comando, mediante o uso do caracter pipe `|`

**Curiosidade:**

O conceito de conexão de comandos foi criado por Douglas Mcllroy, na década de 1950,
e implementado no Unix por Ken Thompson. O próprio Douglas nunca conseguira implementá-lo em nenhum sistema e
ficou maravilhado quando Thompson o fez em apenas uma noite.

Exemplo:

    cat hello.sh | grep $

## Recursividade

Uma operação recursiva ocorre quando ela varre diretórios e seus diretórios "filhos" recursivamente.
Essa varredura deve ser para baixo, por isso seus diretórios "filhos".
Dependendo do comando a recursividade é implementada de forma diferente.

Exemplos:

    ls -R
    grep -r --color Shell ../

## Coringas (Wildcards)

São caracteres que podem ser utilizados como curingas em alguns comentos, substituindo outros caracteres ou sequências de caracteres.
Os coringas são o asterisco `*`, interrogação `?` e colchetes `[]`

### Asterisco (*)

Substitui 0 ou muitos caracteres

Exemplo:

    $ ls *.sh
    $ ls *.*

### Interrogação (?)

Substitui 1 caracter, é obrigatório ter esse caracter.

Exemplo:

    $ cp teste.?? teste2.sh

### Colchetes ([])

Substitui um grupo de caracters. Você pode negar esse grupo utilizando `!`

Exemplos:

    $ rm teste[1-9].sh
    $ rm teste[!a-zA-Z].sh

## Aliases

Alias é uma forma de criar um atalho para simplificar um comando.

Exemplo:

    $ alias grep="grep --color"
    $ unalias grep # como remover um alias

## Output Redirection

Técnica para exportação do resultado de um comando para um arquivo externo.
Por exemplo:

    $ echo "oi" > log.txt

Para escrever no final do arquivo, ao invés de subscrever utilize dois `<<`:

    $ echo "tchau" >> log.txt

Esses comandos não salvam no arquivo externo as mensagens de erro, se quiser utilize o número 2 na frente:

    $ ls xyz 2> log.txt
    $ ls xyz 2>> log.txt

## .bashrc e .bash_profile

O bash interpreta e executa os comandos desses arquivos quando uma nova janela do terminal é aberta.
Nesse arquivo você pode alterar variáveis, criar aliases, executar comandos, etc.
A diferença entre esses arquivos é que o .bashrc é executado sem a necessidade de login,
já o `.bash_profile` é executado apenas com login e pode variar de acordo com o usuário.
Caso queira alterá-lo, ele fica localizado no diretório raiz (`cd ~`).

## Exercícios

Caso queira colocar em prática os conceitos apresentados aqui, faça os [exercícios](exercicios.md)

## Fontes

- [Wikipedia - Shell](http://en.wikipedia.org/wiki/Shell_(computing)
- [Descobrindo o Linux – 3ª Edição](http://www.novateceditora.com.br/livros/linux3/)
- [Google](http://google.com)
