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