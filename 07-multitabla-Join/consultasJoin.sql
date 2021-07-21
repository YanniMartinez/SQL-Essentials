/* Joins nos permite fusionar información de multiples tablas */

/* Mostrar las entradas con el nombre del autor y de la categorio */
SELECT entrada.id, entrada.titulo, usuario.nombre, categoria.nombre
FROM Entrada
INNER JOIN Usuario ON entrada.usuario_id = usuario.id
INNER JOIN Categoria ON entrada.categoria_id = categoria.id;

/* Usando Alias */
SELECT e.id, e.titulo, u.nombre, c.nombre
FROM Entrada e
INNER JOIN Usuario u  ON e.usuario_id = u.id
INNER JOIN categoria c ON e.categoria_id = c.id;

/* Obtener el número de entradas de categorias */
SELECT e.nombre, COUNT(e.id) FROM categoria c
INNER JOIN entrada e ON e.categoria_id = c.id
GROUP BY e.categoria_id;

/* Obtener el número de entradas de categorias con LEFT JOIN */
SELECT e.nombre, COUNT(e.id) FROM categoria c
LEFT JOIN entrada e ON e.categoria_id = c.id
GROUP BY e.categoria_id;

/* https://www.w3schools.com/mysql/mysql_join.asp
 */