# Técnicas de Programação 2

> Trabalho 1 - Grupo 8


## The One

### Restrições

* Existência de uma abstração para a qual os valores podem ser convertidos;

* Operações para envolver valores, de modo que eles se tornem a abstração;

* Operações para vincular-se a funções, para estabelecer sequências de funções;

* O problema de maior complexidade é resolvido como um _pipeline_ de funções unidas, com o desempacotamento acontecendo no final;

* A operação de _bind_ simplesmente chama a função fornecida, dando a ela o valor que ela contém e mantendo o valor retornado.


## Executando o Trabalho

### Pré-requisitos

* GHC (Glasgow Haskell Compiler): É um compilador de Haskell amplamente utilizado. Você pode instalá-lo seguindo as instruções fornecidas [aqui.](https://www.haskell.org/downloads/)
* Cabal: É um sistema de gerenciamento de pacotes e compilação para Haskell. Geralmente, é instalado junto com o GHC.
* Um editor de texto ou ambiente de desenvolvimento Haskell; como o VSCode com o plugin Haskell, Emacs com o modo Haskell ou qualquer outro de sua preferência.

### Passos para Execução

* Clone este repositório para o seu sistema local usando o comando git clone <URL do repositório> ou baixe-o como um arquivo ZIP e extraia-o para uma pasta de sua escolha.
* Navegue para o Diretório do Projeto.
* Abra um terminal ou prompt de comando.
*  Use o comando cd para navegar até o diretório onde você clonou ou extraiu o repositório.

* O código Haskell estará contido em um arquivo .hs. Compile-o usando o GHC. Por exemplo:
```
ghc TheOne.hs
```
Isso produzirá um arquivo executável (por padrão, com o mesmo nome do arquivo .hs, mas sem a extensão .hs).
```
./TheOne
```
* Execute o Programa.

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/Vitoudi/TP2-Trabalho-1/issues)
