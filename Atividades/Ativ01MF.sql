/* Ativ01ML: */

CREATE TABLE Empregado (
    Cad VARCHAR PRIMARY KEY,
    Nome VARCHAR,
    Sexo VARCHAR,
    Salario VARCHAR,
    depNumero VARCHAR
);

CREATE TABLE Departamento (
    Numero VARCHAR PRIMARY KEY,
    Nome VARCHAR
);

CREATE TABLE Dependente (
    Nome VARCHAR PRIMARY KEY,
    Grau_Parentesco VARCHAR,
    Data_Nasc VARCHAR,
    cadEmpregado VARCHAR
);

CREATE TABLE Projeto (
    Numero VARCHAR PRIMARY KEY,
    Nome VARCHAR,
    Local VARCHAR,
    depNumero VARCHAR
);

CREATE TABLE Locais (
    Locais_PK INT NOT NULL PRIMARY KEY,
    Locais VARCHAR
);

CREATE TABLE Gerencia (
    depNumero VARCHAR,
    cadEmpregado VARCHAR,
    Data_Inicio VARCHAR
);

CREATE TABLE Trabalha_Em (
    cadEmpregado VARCHAR,
    projNumero VARCHAR,
    Horas VARCHAR
);
 
ALTER TABLE Empregado ADD CONSTRAINT FK_Empregado_2
    FOREIGN KEY (depNumero)
    REFERENCES Departamento (Numero)
    ON DELETE SET NULL;
 
ALTER TABLE Departamento ADD CONSTRAINT FK_Departamento_2
    FOREIGN KEY (fk_Locais_Locais_PK)
    REFERENCES Locais (Locais_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Dependente ADD CONSTRAINT FK_Dependente_2
    FOREIGN KEY (cadEmpregado)
    REFERENCES Empregado (Cad)
    ON DELETE SET NULL;
 
ALTER TABLE Projeto ADD CONSTRAINT FK_Projeto_2
    FOREIGN KEY (depNumero)
    REFERENCES Departamento (Numero)
    ON DELETE SET NULL;
 
ALTER TABLE Gerencia ADD CONSTRAINT FK_Gerencia_1
    FOREIGN KEY (depNumero)
    REFERENCES Departamento (Numero)
    ON DELETE SET NULL;
 
ALTER TABLE Gerencia ADD CONSTRAINT FK_Gerencia_2
    FOREIGN KEY (cadEmpregado)
    REFERENCES Empregado (Cad)
    ON DELETE SET NULL;
 
ALTER TABLE Trabalha_Em ADD CONSTRAINT FK_Trabalha_Em_1
    FOREIGN KEY (cadEmpregado)
    REFERENCES Empregado (Cad)
    ON DELETE SET NULL;
 
ALTER TABLE Trabalha_Em ADD CONSTRAINT FK_Trabalha_Em_2
    FOREIGN KEY (projNumero)
    REFERENCES Projeto (Numero)
    ON DELETE SET NULL;