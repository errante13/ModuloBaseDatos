--1. ¿Cuántos registros hay?

select count(*) from inscritos; 

-- 2. ¿Cuántos inscritos hay en total?

select sum('cantidad') from inscritos;

-- 3. ¿Cuál o cuáles son los registros de mayor antigüedad?

select * from inscritos order by fecha asc limit 2;

--4. ¿Cuántos inscritos hay por día? (entendiendo un día 
--    como una fecha distinta de ahora en adelante)

select count(cantidad) 
from inscritos 
group by fecha 
order by fecha;  

-- 5. ¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se
--     inscribieron en ese día?

select fecha, SUM(cantidad) AS total from inscritos
group by fecha
order by total_inscritos desc 
limit 1;