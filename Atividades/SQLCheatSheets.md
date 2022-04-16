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