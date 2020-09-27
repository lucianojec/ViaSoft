/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases 12.1.0                     */
/* Target DBMS:           Firebird 3                                      */
/* Project file:          Project1.dez                                    */
/* Project name:          Projeto ViaSoft                                 */
/* Author:                Luciano Oliveira                                */
/* Script type:           Database creation script                        */
/* Created on:            2020-09-27 17:24                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

/* ---------------------------------------------------------------------- */
/* Add table "CARGO"                                                      */
/* ---------------------------------------------------------------------- */

CREATE TABLE CARGO (
    CODCARGO INTEGER NOT NULL,
    NOMECARGO VARCHAR(50),
    STATUS BOOLEAN,
    CONSTRAINT PK_CARGO PRIMARY KEY (CODCARGO)
);

/* ---------------------------------------------------------------------- */
/* Add table "DEPARTAMENTOS"                                              */
/* ---------------------------------------------------------------------- */

CREATE TABLE DEPARTAMENTOS (
    CODDEPTO INTEGER NOT NULL,
    NOMEDEPTO VARCHAR(40),
    MATREMP INTEGER,
    CONSTRAINT PK_DEPARTAMENTOS PRIMARY KEY (CODDEPTO)
);

/* ---------------------------------------------------------------------- */
/* Add table "EMPREGADOS"                                                 */
/* ---------------------------------------------------------------------- */

CREATE TABLE EMPREGADOS (
    MTREMP INTEGER,
    NOME VARCHAR(40),
    SEXO CHAR(1),
    SALARIO FLOAT,
    DTCONTRATO DATE,
    CODCARGO INTEGER NOT NULL,
    CODDEPTO INTEGER NOT NULL,
    CONSTRAINT PK_EMPREGADOS PRIMARY KEY (CODCARGO, CODDEPTO)
);

/* ---------------------------------------------------------------------- */
/* Add table "DEPENDENTES"                                                */
/* ---------------------------------------------------------------------- */

CREATE TABLE DEPENDENTES (
    MTREMP INTEGER,
    NOME VARCHAR(40),
    SEXO CHAR(1),
    DATANASC DATE,
    CODCARGO INTEGER NOT NULL,
    CODDEPTO INTEGER NOT NULL,
    CONSTRAINT PK_DEPENDENTES PRIMARY KEY (CODCARGO, CODDEPTO)
);

/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

ALTER TABLE EMPREGADOS ADD CONSTRAINT CARGO_EMPREGADOS 
    FOREIGN KEY (CODCARGO) REFERENCES CARGO (CODCARGO);

ALTER TABLE EMPREGADOS ADD CONSTRAINT DEPARTAMENTOS_EMPREGADOS 
    FOREIGN KEY (CODDEPTO) REFERENCES DEPARTAMENTOS (CODDEPTO);

ALTER TABLE DEPENDENTES ADD CONSTRAINT EMPREGADOS_DEPENDENTES 
    FOREIGN KEY (CODCARGO, CODDEPTO) REFERENCES EMPREGADOS (CODCARGO,CODDEPTO);
