:warning: ESTE REPOSITÓRIO ESTA SENDO DESENVOLVIDO AOS POUCOS COMO UMA FORMA DE ESTUDO :warning:
# Reimplementing “git clone” in Haskell from the bottom up
## Motivação
* Estudar as estruturas de dados do git
* Aplicar meu conhecimento de Haskell
* Aprender novos conhecimentos de Haskell
* Ter minha versão PT/BR do [artigo original](http://stefan.saasen.me/articles/git-clone-in-haskell-from-the-bottom-up/)
* Ajudar outras pessoas que tem o mesmo interesse
## Visão Geral
Áreas que terão que ser analisadas para poder ocorrer a implementação:
* Protocolo git
* Formato de arquivo usado para transferir arquivos
* Objetos que o git usa para armezenar os arquivos reais na forma de blobs
* Formato do index

Como no artigo original irei indicar o artigo ["Git from the bottom up"](http://ftp.newartisans.com/pub/git.from.bottom.up.pdf) que cobre os comandos de baixo nível e o design do armazenamento de objetos git.

Para manter o escopo menor será implementado apenas o protocolo de transporte git://.

## O processo de clone
Exite alguns passos que são necessários para uma operação de clone com sucesso. Este passo inicia
com o commando [`git URL`](https://mirrors.edge.kernel.org/pub/software/scm/git/docs/git-clone.html) e segue os seguintes passos:

* Analisa o URL do clone
  * Extrai caminho do host, porta e repositório.
* Conecta-se ao servidor git usando o protocolo de transporte git nativo (TCP).
* Negocia os objetos que precisam ser transferidos do servidor para o cliente.
* Solicita as referências (refs) necessárias e recebe o arquivo do pacote que contém todos os objetos acessíveis.
* Cria um diretório de repositório git válido e uma estrutura de arquivos no disco.
* Armazena os objetos e referências no disco.
* Preenche o diretório de trabalho com os arquivos.
* Cria o arquivo de índice que corresponde a essa dica e aos arquivos em disco.

## Índice do artigo
O artigo abrangerá os seguintes tópicos:

1. [O protocolo `git transport` e `pack wire`](#topico1)
2. [O formato do arquivo do pacote](#topico2)
3. [O armazenamento de objetos local e a área de preparação](#topico3)

## O protocolo git transport e pack wire <a name="topico1"></a>
## O formato do arquivo do pacote <a name="topico2"></a>
## O armazenamento de objetos local e a área de preparação <a name="topico3"></a>

## Referencia
* [Artigo original](http://stefan.saasen.me/articles/git-clone-in-haskell-from-the-bottom-up/)
* [Git original](git-in-haskell-from-the-bottom-up)
