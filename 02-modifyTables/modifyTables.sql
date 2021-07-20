/* Allow alter table, in this case we rename a TableName */
ALTER TABLE USUARIO RENAME TO USUARIO_RENAME;

/* Rename column
*ALTER TABLE nameTable atributeToModify newNameOfAtribute dataType() CanBeNull;
Modifica Tabla nombreDeTabla atributoAModificar nuevoNombreDeatributo tipoDeDato() puedeSerNulo;
*/
ALTER TABLE USUARIO_RENAME CHANGE apellidos apellido VARCHAR(100) NULL; 

/*Modificar la columna SIN cambiar el nombre*/
ALTER TABLE USUARIO_RENAME MODIFY apellido CHAR(50) NOT NULL;

/* Añadir nueva columna */
ALTER TABLE USUARIO_RENAME ADD website VARCHAR(50) NULL;
