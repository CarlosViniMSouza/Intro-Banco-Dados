# Shortcuts SQL (atalhos SQL)

<br></br>

## 1 - Criacao de Tabela:

```
CREATE TABLE <nome-tabela>
            (
              <descricao-atributos>
              <descricao-chaves>
              <descricao-restricoes>
            )
```

### 1.1 `<descricao-atributos> = <nome> + <tipo>`

### 1.2 `<tipo>` = INTEGER, DECIMAL, NUMERIC, REAL, VARCHAR, CHAR, TEXT, TIMESTAP, DATE, TIME, ETC ...

### 1.3 `<descricao-chaves> :`

&nbsp; &nbsp; &nbsp;  1.3.1 - Chave Primaria: 

```
CONSTRAINT PKey_tabela
PRIMARY KEY (<atributos>)
```

&nbsp; &nbsp; &nbsp;  1.3.2 - Chave Secundaria:

```
CONSTRAINT FKey_tabela
FOREIGN KEY (<atributo>)
REFERENCES <tabela> (<atributo>)
```

### 1.4 Descricao de Restricoes:

&nbsp; &nbsp; &nbsp; 1.4.1 - So admite valor unico:

```
CONSTRAINT tabela_const
UNIQUE (nome)
```

`Exemp.: CPF varchar(10) UNIQUE;`

&nbsp; &nbsp; &nbsp; 1.4.2 -  Nao admite valores nulos:

```
CONSTRAINT tabela_const
(nome) NOT NULL
```

`Exemp.: NOME varchar(30) NOT NULL;`

<br></br>

## 2 - Remocao de Tabelas

Apaga a tabela que foi desenvolvida! Use com MUITO CUIDADO!!

```
DROP TABLE <tabela>;
```

`Exemp.: DROP TABLE Professor;`

<br></br>

## 3 - Comando SELECT

&nbsp; &nbsp; &nbsp; 3.1 - Selecionando atributos especificos:

```
SELECT <lista-atributos> FROM <tabela>;
```

`Ex: Listar matricula e nome de todos os professores`

```
SELECT matricula, nome FROM Professor;
```

&nbsp; &nbsp; &nbsp; 3.2 - Selecionando todos atributos:

`Ex: Listar tudo dos professores`

```
SELECT * FROM Professor;
```

&nbsp; &nbsp; &nbsp; 3.3 - Selecionando tuplas da tabela com condicao:

```
SELECT <lista-atributos> 
FROM <tabela> 
WHERE <coluna_tabela> = <condicao>;
```

`Ex: Listar tudo do prof da 'matricula = 123'`

```
SELECT *
FROM Professor
WHERE matricula = "123";
```

<br></br>

## 4 - Operadores SQL

&nbsp; &nbsp; &nbsp; 4.1 - BETWEEN/NOT BETWEEN: substituem respectivamente o '<=' e '>='

```
WHERE <nome-atributo>
BETWEEN <valor1> AND <valor2>
```

`Ex.: Listar todos os Empregados cujo salário esteja entre R$1000 e R$2000`

```
SELECT * FROM Empregado
WHERE salario
BETWEEN 1000 AND 2000;
```

<br></br>

&nbsp; &nbsp; &nbsp; 4.2 - LIKE e NOT LIKE

Aplicam-se SOMENTE sobre atributos do tipo CHAR!

Operam como '=' e '< >', usando o simbolo % (substitui uma palavra)

`Ex.: Listar os empregados com Jose no 1° nome`

```
SELECT nome FROM Empregado
WHERE nome LIKE 'José';
```

<br></br>

&nbsp; &nbsp; &nbsp; 4.3 - IN e NOT IN

Procuram dados contidos (ou nao) em um conjunto de valores

(Intersecao e Diferenca de conjuntos, basicamente ...)

`Ex.: Listar todos os atributos de Carro com cores 'branco' e 'preto'`

```
SELECT * FROM Carro 
WHERE cor IN ('branco', 'preto');
```

&nbsp; &nbsp; &nbsp; 4.4 - ORDER BY

Ordena os elementos em ordem Crescente ou Decrescente

```
SELECT <lista-atributos>
FROM <tabela>
[WHERE <condicao>]
ORDER BY <atributo> {ASC/DESC}
```

`Ex1.: Ordene todos os funcionarios pelo nome ascendentemente`

```
SELECT *
FROM Funcionarios
ORDER BY nome;
```

`Ex2.: Ordene todos os funcionarios pelo salario descendentemente`

```
SELECT *
FROM Funcionarios
ORDER BY salario DESC;
```

<br></br>

## 5 - Funcoes agregadas

Algumas funcoes conhecidas (a partir do SELECT): 

```
1 - MAX
2 - MIN
3 - SUM
4 - AVG
5 - COUNT
```

`Ex1.: Mostrar o valor do maior salário dos empregados, e, o nome do empregado`

```
SELECT nome, salario 
FROM Empregado
WHERE salario 
IN (SELECT MAX (salario) FROM Empregado);
```

`Ex2.: Mostrar a media dos salarios dos empregados`

```
SELECT AVG (salario) 
FROM Empregado;
```

`Ex3.: Mostrar quantos empregados tem 'salario > R$1000'`

```
SELECT COUNT (*)
FROM Empregado
WHERE salario > 1000;
```

## 6 - Comando DISTINCT

Elimina tuplas duplicadas do resultado de uma consulta

`Ex.: Quais os diferentes salários dos empregados?`

```
SELECT DISTINCT salario FROM Empregado;
```

## 7 - Comando GROUP BY

Organiza a seleção de dados em grupos

`Ex.: Listar os empregados agrupados por sexo, informando as quantidades`

```
SELECT sexo, nome, 
Count(*) FROM Empregado 
GROUP BY sexo, nome;
```

Obs.: Todos os atributos do SELECT devem aparecer no GROUP BY

## 8 - Uso de Alias

Alias são utilizados para substituir nomes de tabelas em comandos SQL

São definidos na cláusula FROM

Ex.:

```
SELECT A.nome FROM Aluno A
WHERE A.matricula = 15;
```

--> Esse do 'ALIAS' eu não entendi o codigo SQL <--

## 9 - Juncao de Tabelas

Citar as tabelas envolvidas no comando FROM

– 'Alias' para tabelas: utilizados para evitar ambiguidades

Referenciar os nomes de Empregado e de Departamento

```
...e.nome...FROM Empregado e
...d.nome...FROM Departamento d
```

`Ex.: Listar o nome do empregado e do departamento onde está alocado`

```
SELECT E.nome, D.nome
FROM Empregado E, Departamento D
WHERE E.num_dep = D.numero;
```

## 10 - Adicionando tuplas
