/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases 12.1.0                     */
/* Target DBMS:           Firebird 3                                      */
/* Project file:          Project1.dez                                    */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2020-09-28 13:42                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

ALTER TABLE PEDIDOITEM DROP CONSTRAINT ITEM_PEDIDOITEM;

ALTER TABLE PEDIDOITEM DROP CONSTRAINT PEDIDOCAB_PEDIDOITEM;

/* ---------------------------------------------------------------------- */
/* Drop table "PEDIDOITEM"                                                */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE PEDIDOITEM DROP CONSTRAINT PK_PEDIDOITEM;

DROP TABLE PEDIDOITEM;

/* ---------------------------------------------------------------------- */
/* Drop table "PEDIDOCAB"                                                 */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE PEDIDOCAB DROP CONSTRAINT PK_PEDIDOCAB;

DROP TABLE PEDIDOCAB;

/* ---------------------------------------------------------------------- */
/* Drop table "ITEM"                                                      */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE ITEM DROP CONSTRAINT PK_ITEM;

DROP TABLE ITEM;
