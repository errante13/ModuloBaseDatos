

-- 1. Crear una base de datos llamada películas.(1 Punto)
    CREATE DATABASE peliculas
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
-- 2. Cargar ambos archivos a su tabla correspondiente.(1 Punto)´
 

-- 3. Obtener el ID de la película “Titanic”.(1 Punto)

    SELECT id FROM public.peliculas x WHERE pelicula = 'Titanic';
-- 4. Listar a todos los actores que aparecen en la película "Titanic".(1 Punto)
        SELECT actor FROM public.reparto where id_pelicula = 2;

        "Leonardo DiCaprio"
        "Kate Winslet"
        "Billy Zane"
        "Kathy Bates"
        "Frances Fisher"
        "Bernard Hill"
        "Jonathan Hyde"
        "Danny Nucci"
        "David Warner"
        "Bill Paxton"
        "Gloria Stuart"
        "Victor Garber"
        "Suzy Amis"

-- 5. Consultar en cuántas películas del top 100 participa Harrison Ford.(2 Puntos)
SELECT pelicula FROM public.peliculas where id = 48 or id = 59 or id = 63 or id = 67 or id = 69 or id = 87 
or id = 88 or id = 97; 

"Star Wars. Episodio IV: Una nueva esperanza"
"Indiana Jones y la última cruzada"
"En busca del arca perdida"
"Star Wars. Episodio V: El imperio contraataca"
"Star Wars. Episodio VI: El retorno del Jedi"
"Blade Runner"
"Apocalypse Now"
"Indiana Jones y el templo maldito"

-- 6. Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.(1 punto)
SELECT anio_estreno,pelicula from peliculas where anio_estreno >= 1990 and anio_estreno <= 1999 order by 2 asc;

1999	"Matrix"
1997	"Mejor... imposible"
1993	"Parque Jurásico"
1993	"Pesadilla antes de navidad"
1994	"Pulp Fiction"
1998	"Salvar al soldado Ryan"
1995	"Seven"
1999	"Star Wars. Episodio I: La amenaza fantasma"
1991	"Terminator 2: el juicio final"
1997	"Titanic"
1995	"Toy Story"
1999	"Toy Story 2"
1996	"Trainspotting"
1990	"Uno de los nuestros"
-- 7. Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”. (1 punto)
SELECT pelicula, LENGTH(pelicula) AS longitud_titulo from peliculas ;
"Forest Gump"	11
"Titanic"	    7
"El Padrino"	10
"Gladiator" 	9
"El Señor de los anillos: El retorno del rey"	43
-- 8. Consultar cual es la longitud más grande entre todos los títulos de las películas.(2 punto)

SELECT pelicula,LENGTH(pelicula)  from peliculas order by 2 desc limit 1;

"Sweeney Todd: El barbero diabólico de la calle Fleet"	52