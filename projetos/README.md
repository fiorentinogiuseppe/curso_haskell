#Reimplementing “git clone” in Haskell from the bottom up
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

##O processo de clone
