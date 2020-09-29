/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases 12.1.0                     */
/* Target DBMS:           Firebird 3                                      */
/* Project file:          Project1.dez                                    */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2020-09-28 13:42                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

/* ---------------------------------------------------------------------- */
/* Add table "ITEM"                                                       */
/* ---------------------------------------------------------------------- */

CREATE TABLE ITEM (
    ID_ITEM INTEGER NOT NULL,
    DESC_ITEM VARCHAR(100),
    ID_PED INTEGER NOT NULL,
    ID_ITEMSEQ INTEGER NOT NULL,
    CONSTRAINT PK_ITEM PRIMARY KEY (ID_ITEM, ID_PED, ID_ITEMSEQ)
);

/* ---------------------------------------------------------------------- */
/* Add table "PEDIDOCAB"                                                  */
/* ---------------------------------------------------------------------- */

CREATE TABLE PEDIDOCAB (
    ID_PED INTEGER NOT NULL,
    DTEMISSAO DATE,
    NUMERO INTEGER,
    CLIENTE VARCHAR(100),
    CONSTRAINT PK_PEDIDOCAB PRIMARY KEY (ID_PED)
);

/* ---------------------------------------------------------------------- */
/* Add table "PEDIDOITEM"                                                 */
/* ---------------------------------------------------------------------- */

CREATE TABLE PEDIDOITEM (
    ID_PED INTEGER NOT NULL,
    ID_ITEM INTEGER NOT NULL,
    ID_ITEMSEQ INTEGER NOT NULL,
    QUANTIDADE DOUBLE PRECISION,
    VALORUNIT DOUBLE PRECISION,
    VALORTOTAL DOUBLE PRECISION,
    CONSTRAINT PK_PEDIDOITEM PRIMARY KEY (ID_PED, ID_ITEM, ID_ITEMSEQ)
);

/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

ALTER TABLE PEDIDOITEM ADD CONSTRAINT ITEM_PEDIDOITEM 
    FOREIGN KEY (ID_ITEM, ID_PED, ID_ITEMSEQ) REFERENCES ITEM (ID_ITEM,ID_PED,ID_ITEMSEQ);

ALTER TABLE PEDIDOITEM ADD CONSTRAINT PEDIDOCAB_PEDIDOITEM 
    FOREIGN KEY (ID_PED) REFERENCES PEDIDOCAB (ID_PED);
