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
