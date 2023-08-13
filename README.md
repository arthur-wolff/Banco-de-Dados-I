# Banco-de-Dados-I
Repositorio destinado para o armazenamento do projeto prático desenvolvido no curso de Banco de Dados I (CSI 440)
## Projeto desenvolvido por: Arthur Wolff Soares

---

# Sumario:

1. [Descrição do Problema](https://github.com/arthur-wolff/Banco-de-Dados-I/tree/main#descri%C3%A7%C3%A3o-do-problema)
2. [Criação do Banco de Dados](https://github.com/arthur-wolff/Banco-de-Dados-I/tree/main#cria%C3%A7%C3%A3o-do-banco-de-dados)
3. [Execução da Aplicação](https://github.com/arthur-wolff/Banco-de-Dados-I/tree/main#execu%C3%A7%C3%A3o-da-aplica%C3%A7%C3%A3o)


---

# Descrição do Problema:

A aplicação tem como principal objetivo auxiliar a consulta de dados básicos dos monstros descritos no Manual dos Monstros da 5 edição de Dungeons and Dragons

Os dados armazenados foram:

![image](https://github.com/arthur-wolff/Banco-de-Dados-I/assets/106398646/bc22ccf2-0d7d-4ac6-90e5-1139fd11855b)

Onde: 
  1. Cada monstro é identificado por seu nome;
  2. Caso o monstro não possua o atributo em questão deve ser utilizado “-” no preenchimento do dado; 
  3. O preenchimento de dados devem respeitar a formatação apresentada no livro;
  4. Os dados ‘pontos de vida’ devem ser preenchidos apenas pelos dados dentro dos parênteses e os  dados de ‘classe de armadura’ apenas a parte inteira;


---

# Criação do Banco de Dados:
## Modelagem ER:
O banco foi modelado da sequinte forma:

![alt text](db/Modelagens_BD_Trab_Pratico/BD_Manula_de_Monstros_ER.png "MODELAGEM ER")

## Modelo Relacional:
O mapeamento para o modelo relacional se deu da seguinte forma:

![alt text](db/Modelagens_BD_Trab_Pratico/Mapeamento_Relacional.png "MODELO RELACIONAL")

## Script de Criação do Banco:
Dado o mapeamento o seguinte Script de criação do Banco foi criado:

[SCRIPT DE CRIAÇÂO DO BANCO DE DADOS](db/Modelagens_BD_Trab_Pratico/Scripts_DB/Script_criação_do_banco.sql)

## Script de Povoamento do Banco:
O Banco foi populado apartir do seguinte script:

[SCRIPT DE POVOAMENTO DO BANCO DE DADOS](db/Modelagens_BD_Trab_Pratico/Scripts_DB/Script_Povoar_Banco.sql)

Foram adicionados um numero de 30 criaturas no banco, com intuito de testagem do projeto.

---

# Execução da Aplicação:
Para a execução do programa é necessário:

## Node.js:
É necessário a instalação do [Node.js](https://nodejs.org/en)

## Instalar Depedencias:
É necessário realizar a instalação das depedencias do programa, para isso no terminal insira:

```npm install```


## Iniciar o Backend:
É necessário iniciar a API de backend, para isso no terminal insira:

```npm start```

## Abrir a Pagina:
Abra a pagina ```index.html```

## Realize a Busca:
Digite o nome da criatura a ser buscada, levando em conta aquelas que estão povoando o banco de dados.

---






