/* Consulta para obtener el número de entradas por categoria: 
Count genera un conteo */
SELECT COUNT(titulo), categoria_id FROM entrada
/* La siguiente consulta permite contar el número de entradas que hay según esa categoria */
SELECT COUNT(titulo), categoria_id FROM entrada GROUP BY categoria_id;

/* AS significa un alias temporal mientras dura la consulta */
SELECT COUNT(titulo) AS 'Número de entradas', categoria_id FROM entrada GROUP BY categoria_id;
