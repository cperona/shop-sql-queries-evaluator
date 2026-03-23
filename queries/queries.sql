-- 1. Llista el nom de tots els productes que hi ha en la taula producto.
select nombre from producto;

-- 2. Llista els noms i els preus de tots els productes de la taula producto.
select nombre,precio from producto;

-- 3. Llista totes les columnes de la taula producto.
select * producto;

-- 4. Llista el nom dels productes, el preu en euros (precio_eur) i el preu en dòlars estatunidencs (precio_usd) amb un tipus de canvi de 1 € = 1 $.
select nombre,precio as precio_eur,precio as precio_usd from producto;

-- 5. Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (amb un tipus de canvi de 1 € = 1,1 $ i arrodonint el resultat a dues xifres decimals). Utilitza els següents àlies per a les columnes: nom del producte, euros, dòlars.
select nombre as 'nom del producte', precio as euros, round(precio*1.1, 2) as dolars from producto;

-- 6. Llista els noms (nombre) i els preus de tots els productes de la taula producto, convertint els noms a majúscula.
select upper(nombre),precio from producto;

-- 7. Llista els noms (nombre) i els preus (precio) dels productes de la taula producto, convertint els noms a minúscula.
select lower(nombre),precio from producto;

-- 8. Llista el nom de tots els fabricants en una columna, i en una altra columna obtingui en majúscules els dos primers caràcters del nom del fabricant (iniciales).
select nombre,upper(nombre) from producto;

-- 9. Llista els noms i els preus dels productes, arrodonint el valor del preu (precio)
select nombre,round(precio) from producto;

-- 10. Llista els noms i els preus de tots els productes (precio truncado) de la taula producto, truncant el valor del preu per a mostrar-lo sense cap xifra decimal.
select nombre,round(precio,0) as 'precio truncado' from producto;

-- 11. Mostra una llista amb els codis dels fabricants que apareixen a la taula producto, incloent possibles repeticions.
select codigo_fabricante from producto;

-- 12. Llista el codi dels fabricants que tenen productes en la taula producto, eliminant els codis que apareixen repetits.
select distinct codigo_fabricante from producto;

-- 13. Llista els noms dels fabricants ordenats de manera ascendent
select nombre from producto order by nombre asc;

-- 14. Llista els noms dels fabricants ordenats de manera descendent
select nombre from producto order by nombre desc;

-- 15. Llista els noms i els preus dels productes ordenats, en primer lloc, pel nom de manera ascendent i, en segon lloc, pel preu de manera descendent.
select nombre,precio from producto order by nombre asc, precio desc;

-- 16. Retorna una llista amb les 5 primeres files de la taula fabricante.
select * from producto limit 5;

-- 17. Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricante. La quarta fila també s'ha d'incloure en la resposta.
select * from producto limit 2 offset 3;

-- 18. Llista el nom i el preu del producte més barat. (Utilitza solament les clàusules ORDER BY i LIMIT).
select nombre,precio from producto order by precio asc limit 1;

-- 19. Llista el nom i el preu del producte més car. (Utilitza solament les clàusules ORDER BY i LIMIT).
select nombre,precio from producto order by precio desc limit 1;

-- 20. Llista el nom de tots els productes del fabricant el codi de fabricant del qual és igual a 2.
select nombre from producto where codigo_fabricante = 2;

-- 21. Retorna una llista amb el nom del producte, preu i nom de fabricant (nombre del fabricante) de tots els productes de la base de dades.
select producto.nombre,producto.precio,fabricante.nombre as 'nombre del fabricante' from producto left join fabricante on producto.codigo_fabricante=fabricante.codigo;

-- 22. Llista tots els productes amb nom, preu i nom del fabricant (nombre del fabricante) ordenats alfabèticament.
select producto.nombre,producto.precio,fabricante.nombre as 'nombre del fabricante' from producto left join fabricante on producto.codigo_fabricante=fabricante.codigo order by nombre;

-- 23. Retorna una llista amb el codi del producte, nom del producte, codi del fabricant (codigo fabricante) i nom del fabricant (nombre fabricante), de tots els productes de la base de dades.
select producto.codigo,producto.nombre,producto.codigo_fabricante as 'codigo fabricante',fabricante.nombre as 'nombre fabricante' from producto left join fabricante on producto.codigo_fabricante=fabricante.codigo;

-- 24. Retorna el nom, el preu i el nom del fabricant (fabricante), del producte més barat.
select producto.nombre,producto.precio,fabricante.nombre as 'fabricante' from producto left join fabricante on producto.codigo_fabricante=fabricante.codigo order by producto.precio asc limit 1;

-- 25. Retorna el nom del producte, el preu i el nom del seu fabricant (fabricante), del producte més car.
select producto.nombre,producto.precio,fabricante.nombre as 'fabricante' from producto left join fabricante on producto.codigo_fabricante=fabricante.codigo order by producto.precio desc limit 1;

-- 26. Retorna una llista amb nom i preu de tots els productes del fabricant Lenovo.
select nombre,precio from producto where codigo_fabricante in (select codigo from fabricante where nombre='Lenovo');

-- 27. Retorna una llista amb nom i preu de tots els productes del fabricant Crucial que tinguin un preu major que 200 €
select nombre,precio from producto where codigo_fabricante in (select codigo from fabricante where nombre='Crucial') and precio>200;

-- 28. Retorna un llistat amb nom, preu i nom del fabricant (fabricante) de tots els productes dels fabricants Asus, Hewlett-Packard i Seagate. Sense utilitzar l'operador IN.
select producto.nombre,producto.precio,fabricante.nombre as 'fabricante' from producto left join fabricante on producto.codigo_fabricante=fabricante.codigo where codigo_fabricante in (select codigo from fabricante where nombre='Asus' or nombre='Hewlett-Packard' or nombre='Seagate');

-- 29. Retorna un llistat amb nom, preu i nom del fabricant (fabricante) de tots els productes dels fabricants Asus, Hewlett-Packard i Seagate. Fent servir l'operador IN.
select producto.nombre,producto.precio,fabricante.nombre as 'fabricante' from producto left join fabricante on producto.codigo_fabricante=fabricante.codigo where codigo_fabricante in (select codigo from fabricante where nombre in ('Asus', 'Hewlett-Packard', 'Seagate'));

-- 30. Retorna un llistat amb el nom, el preu i el nom del fabricant (fabricante) dels productes, on el nom del fabricant acabi en la lletra 'e'.
select producto.nombre,producto.precio,fabricante.nombre as 'fabricante' from producto left join fabricante on producto.codigo_fabricante=fabricante.codigo where fabricante.nombre like '%e';

-- 31. Retorna un llistat amb el nom del producte, el seu preu i el nom del fabricant (fabricante), per a tots aquells productes els fabricants dels quals contenen la lletra 'w' en el seu nom.
select producto.nombre,producto.precio,fabricante.nombre as 'fabricante' from producto left join fabricante on producto.codigo_fabricante=fabricante.codigo where fabricante.nombre like '%w%';

-- 32. Retorna un llistat amb el nom del producte, el seu preu i el nom del fabricant (fabricante), per a tots els productes amb un preu igual o superior a 180 €. Ordena els resultats, primer pel preu en ordre descendent i després pel nom del producte en ordre ascendent.
select producto.nombre,producto.precio,fabricante.nombre as 'fabricante' from producto left join fabricante on producto.codigo_fabricante=fabricante.codigo where producto.precio >= 180;

-- 33. Retorna un llistat amb el codi i el nom de fabricant (fabricante), solament d'aquells fabricants que tenen productes associats en la base de dades.
select codigo,nombre as 'fabricante' from fabricante where exists (select codigo_fabricante from producto where producto.codigo_fabricante=fabricante.codigo);

-- 34. Retorna un llistat de tots els fabricants que existeixen en la base de dades, juntament amb els productes que té cadascun d'ells. Inclou també els fabricants que no tenen cap producte. Mostra el nom del fabricant (fabricante) i el nom del producte (producto).
select fabricante.nombre as 'fabricante',producto.nombre as 'producto' from fabricante left join producto on fabricante.codigo=producto.codigo_fabricante;

-- 35. Retorna un llistat on només apareguin els noms dels fabricants (fabricante) que no tenen cap producte associat.
select nombre as 'fabricante' from fabricante where codigo not in (select codigo_fabricante from producto);

-- 36. Retorna tots els productes del fabricant Lenovo. (Sense utilitzar INNER JOIN).
select * from producto where codigo_fabricante in (select codigo from fabricante where nombre='Lenovo');

-- 37. Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricant Lenovo. (Sense usar INNER JOIN).
select * from producto where codigo_fabricante in (select codigo from fabricante where nombre='Lenovo');

-- 38. Llista el nom del producte més car del fabricant Lenovo.
select nombre from producto where codigo_fabricante in (select codigo from fabricante where nombre='Lenovo') order by precio desc limit 1;

-- 39. Llista el nom del producte més barat del fabricant Hewlett-Packard.
select nombre from producto where codigo_fabricante in (select codigo from fabricante where nombre='Hewlett-Packard') order by precio asc limit 1;

-- 40. Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més car del fabricant Lenovo.
select nombre from producto where precio >= (select nombre from producto where codigo_fabricante in (select codigo from fabricante where nombre='Lenovo') order by precio desc limit 1);

-- 41. Llista tots els productes del fabricant Asus que tenen un preu superior al preu mitjà de tots els seus productes.
select nombre from producto where codigo_fabricante in (select codigo from fabricante where nombre='Asus') and precio > (select avg(precio) from producto);

