-- 1.
select *
from plante

-- 2.
select noplante, nomplante
from plante
where nomplante like 'R%'

-- 3.
select distinct(nomplante)
from plante

-- 4.
select nomplante
from plante
where noregion = 6

-- 5.
select nomregion
from region
order by nomregion desc

-- 6.
select count(*) as "Nombre de serres"
from serre

-- 7.
select count(*) as "Nombre de bananiers"
from plante
where nomplante ='Bananier'

-- 8.
select noregion, count(*) as "Nombre de plantes"
from plante
group by noregion

-- 9.
select noregion, count(*) as "Nombre de plantes"
from plante
group by noregion
having count(*) > 2

-- 10.
-- En SQL 1 : 
select nomplante, nomregion
from plante p, region r
where p.noregion = r. noregion

-- En SQL 2 :
select *
from plante p
inner join region r on (p.noregion = r. noregion)

