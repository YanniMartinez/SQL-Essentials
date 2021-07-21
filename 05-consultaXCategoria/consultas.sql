/* Consulta para obtener el número de entradas por categoria: 
Count genera un conteo */
SELECT COUNT(titulo), categoria_id FROM entrada
/* La siguiente consulta permite contar el número de entradas que hay según esa categoria */
SELECT COUNT(titulo), categoria_id FROM entrada GROUP BY categoria_id;

/* AS significa un alias temporal mientras dura la consulta */
SELECT COUNT(titulo) AS 'Número de entradas', categoria_id FROM entrada GROUP BY categoria_id;

/*En group by no podemos usar el WHERE, pero si el Having, en este contexto sustituye al 
Where */
/* Consulta agrupada con condiciones */
SELECT COUNT(titulo) AS 'Número de entradas', categoria_id 
FROM entrada GROUP BY categoria_id
HAVING COUNT(titulo) >= 4;
/* En este ejemplo nos devuelve las entradas que tengan un contador mayor o igual a 4.
Se lee: 
Trae los titulos y cuentalos y la categoria_id de la tabla entradas agrupadas por categoria id
cuando el número de entradas sea mayor o igual a 4
 */

 