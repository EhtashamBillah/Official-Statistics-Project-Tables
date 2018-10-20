/* for demography population,activity,income,event*/
/* for business business,*/
/*select gender,count(*) from population
group by gender;*/
/*create view demography as*/

/*
CREATE VIEW demography AS
SELECT pop.*,
       2012-pop.birthyear as age,
	   act.luid,
	   act.extent,
	   inc.income,
	   eve.from_a,
	   eve.to_b,
	   eve.month_digit
FROM population AS pop
LEFT JOIN activity AS act
ON pop.pin = act.pin 
LEFT JOIN income AS inc
ON pop.pin = inc.pin
LEFT JOIN eventr AS eve
on pop.pin = eve.pin;
*/



/* estimating total income by sex by community*/
/*
select
  community,
  sum(income) filter (where gender = 1) as "female ",
  sum(income) filter (where gender = 2) as "male "
  
from
  demography
where
  community = 1 or community = 2 or community = 3
group by
  community
order by 
  community;
*/


/* estimating average income by sex by community*/
/*
select
  community,
  avg(income) filter (where gender = 1) as "female ",
  avg(income) filter (where gender = 2) as "male "
  
from
  demography
where
  community != -9
group by
  community
order by 
  community;
*/





/* estimating total income  by sex by age by community*/
/*
select
  community,
  sum(income) filter (where age>=20 and age<=24 and  gender = 1) as "female 20-24 ",
  sum(income) filter (where age>=20 and age<=24 and  gender = 2) as "male 20-24 ",
  sum(income) filter (where age>=25 and age<=29 and  gender = 1) as "female 25-29",
  sum(income) filter (where age>=25 and age<=29 and  gender = 2) as "male 25-29",
  sum(income) filter (where age>=30 and age<=34 and  gender = 1) as "female 30-34",
  sum(income) filter (where age>=30 and age<=34 and  gender = 2) as "male 30-34",
  sum(income) filter (where age>=35 and age<=39 and  gender = 1) as " female 35-39",
  sum(income) filter (where age>=35 and age<=39 and  gender = 2) as " male 35-39",
  sum(income) filter (where age>=40 and age<=44 and  gender = 1) as "female 40-44",
  sum(income) filter (where age>=40 and age<=44 and  gender = 2) as "male 40-44",
  sum(income) filter (where age>=45 and age<=49 and  gender = 1) as "female 45-49",
  sum(income) filter (where age>=45 and age<=49 and  gender = 2) as "male 45-49",
  sum(income) filter (where age>=50 and age<=54 and  gender = 1) as "female 50-54",
  sum(income) filter (where age>=50 and age<=54 and  gender = 2) as "male 50-54",
  sum(income) filter (where age>=55 and age<=59 and  gender = 1) as "female 55-59",
  sum(income) filter (where age>=55 and age<=59 and  gender = 2) as "male 55-59",
  sum(income) filter (where age>=60 and age<=64 and  gender = 1) as "female 60-64",
  sum(income) filter (where age>=60 and age<=64 and  gender = 2) as "male 60-64",
  sum(income) filter (where age>=65 and  gender = 1) as "female >65",
  sum(income) filter (where age>=65 and  gender = 2) as "male >65"
from
  demography
where
  community = 1 or community = 2 or community = 3
group by
  community
order by 
  community;
*/





/* estimating average income  by sex by age by community*/

select
  community,
  avg(income) filter (where age< 25 and  gender = 1) as "female 18-24 ",
  avg(income) filter (where age< 25 and  gender = 2) as "male 18-24 ",
  avg(income) filter (where age>=25 and age<=29 and  gender = 1) as "female 25-29",
  avg(income) filter (where age>=25 and age<=29 and  gender = 2) as "male 25-29",
  avg(income) filter (where age>=30 and age<=34 and  gender = 1) as "female 30-34",
  avg(income) filter (where age>=30 and age<=34 and  gender = 2) as "male 30-34",
  avg(income) filter (where age>=35 and age<=39 and  gender = 1) as " female 35-39",
  avg(income) filter (where age>=35 and age<=39 and  gender = 2) as " male 35-39",
  avg(income) filter (where age>=40 and age<=44 and  gender = 1) as "female 40-44",
  avg(income) filter (where age>=40 and age<=44 and  gender = 2) as "male 40-44",
  avg(income) filter (where age>=45 and age<=49 and  gender = 1) as "female 45-49",
  avg(income) filter (where age>=45 and age<=49 and  gender = 2) as "male 45-49",
  avg(income) filter (where age>=50 and age<=54 and  gender = 1) as "female 50-54",
  avg(income) filter (where age>=50 and age<=54 and  gender = 2) as "male 50-54",
  avg(income) filter (where age>=55 and age<=59 and  gender = 1) as "female 55-59",
  avg(income) filter (where age>=55 and age<=59 and  gender = 2) as "male 55-59",
  avg(income) filter (where age>=60 and age<=64 and  gender = 1) as "female 60-64",
  avg(income) filter (where age>=60 and age<=64 and  gender = 2) as "male 60-64",
  avg(income) filter (where age>=65 and  gender = 1) as "female >65",
  avg(income) filter (where age>=65 and  gender = 2) as "male >65"
from
  demography
where
  community = 1 or community = 2 or community = 3
group by
  community
order by 
  community;




/* estimating total population  by sex by age by community*/
/*
select
  community,
  count(*) filter (where age>=0 and age<=4 and  gender = 1) as "female 0-4 ",
  count(*) filter (where age>=0 and age<=4 and  gender = 2) as "male 0-4 ",
  count(*) filter (where age>=5 and age<=9 and  gender = 1) as "female 5-9",
  count(*) filter (where age>=5 and age<=9 and  gender = 2) as "male 5-9",
  count(*) filter (where age>=10 and age<=14 and  gender = 1) as "female 10-14",
  count(*) filter (where age>=10 and age<=14 and  gender = 2) as "male 10-14",
  count(*) filter (where age>=15 and age<=19 and  gender = 1) as " female 15-19",
  count(*) filter (where age>=15 and age<=19 and  gender = 2) as " male 15-19",  
  count(*) filter (where age>=20 and age<=24 and  gender = 1) as "female 20-24 ",
  count(*) filter (where age>=20 and age<=24 and  gender = 2) as "male 20-24 ",
  count(*) filter (where age>=25 and age<=29 and  gender = 1) as "female 25-29",
  count(*) filter (where age>=25 and age<=29 and  gender = 2) as "male 25-29",
  count(*) filter (where age>=30 and age<=34 and  gender = 1) as "female 30-34",
  count(*) filter (where age>=30 and age<=34 and  gender = 2) as "male 30-34",
  count(*) filter (where age>=35 and age<=39 and  gender = 1) as " female 35-39",
  count(*) filter (where age>=35 and age<=39 and  gender = 2) as " male 35-39",
  count(*) filter (where age>=40 and age<=44 and  gender = 1) as "female 40-44",
  count(*) filter (where age>=40 and age<=44 and  gender = 2) as "male 40-44",
  count(*) filter (where age>=45 and age<=49 and  gender = 1) as "female 45-49",
  count(*) filter (where age>=45 and age<=49 and  gender = 2) as "male 45-49",
  count(*) filter (where age>=50 and age<=54 and  gender = 1) as "female 50-54",
  count(*) filter (where age>=50 and age<=54 and  gender = 2) as "male 50-54",
  count(*) filter (where age>=55 and age<=59 and  gender = 1) as "female 55-59",
  count(*) filter (where age>=55 and age<=59 and  gender = 2) as "male 55-59",
  count(*) filter (where age>=60 and age<=64 and  gender = 1) as "female 60-64",
  count(*) filter (where age>=60 and age<=64 and  gender = 2) as "male 60-64",
  count(*) filter (where age>=65 and  gender = 1) as "female >65",
  count(*) filter (where age>=65 and  gender = 2) as "male >65"
from
  demography
where
  community = 1 or community = 2 or community = 3
group by
  community
order by 
  community;
*/


/* estimating total population by sex by community*/

/*
select
  community,
  count(pin) as total,
  count(pin) filter (where gender = 1) as "female ",
  count(pin) filter (where gender = 2) as "male "
  
from
  demography
where
  community = 1 or community = 2 or community = 3
group by
  community
order by 
  community;
*/


/* ############################################################## */
/* business,activity,income and population register table */
/* extent takes values: 0,0.2,0.4,0.5,0.75,1,-9*/
/* luid takes values: 1 to 2437 */
/* sector takes values: 1 to 7 */


/* creating view for business activity */
/*
create view busact as
select
	act.pin,
	pop.gender,
	act.extent,
	inc.income,
	bus.*
from business as bus
left join activity as act
on bus.luid = act.luid
left join income as inc
on act.pin = inc.pin
left join population as pop
on act.pin = pop.pin;
*/


/* no. of employed person by sector by sex */
/*
select 
	sector,
	count(pin) as total,
	count(pin) filter (where gender = 1) as "female",
	count(pin) filter (where gender = 2) as "male"
	
from busact
where sector != -9
group by sector
order by sector;
*/


/* no. of full time employed person by sector by sex */
/*
select 
	sector,
	count(pin) filter (where extent = 1) as total,
	count(pin) filter (where gender = 1 and extent = 1) as "female",
	count(pin) filter (where gender = 2 and extent = 1) as "male"
	
from busact
where sector != -9
group by sector
order by sector;
*/


/* no. of total enterprises by sector */
/*
select 
	sector,
	count(distinct(entid)) as "total enterprises"

from busact
where sector != -9
group by sector
order by sector;
*/



/* no. of total enterprises by community */
/*
select 
	community,
	count(distinct(entid)) as "total enterprises"

from busact
where community != -9
group by community
order by community;
*/


/* estimating average yearly income by sex by sector*/
/*
select
  sector,
  avg(income) filter (where gender = 1) as "female ",
  avg(income) filter (where gender = 2) as "male "
  
from
  busact
where
  sector != -9
group by
  sector
order by 
  sector;
*/


/* no. of total luid by sector */
/*
select 
	sector,
	count(distinct(luid)) as "total local unit"

from busact
where sector != -9
group by sector
order by sector;
*/

/*
select * from demography
where  age < 18 and income > 0
order by age asc;
*/














