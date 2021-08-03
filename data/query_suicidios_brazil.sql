create table suicidio(
	code bigserial not null,
	country varchar(255),
	year integer,
	sex varchar(10),
	age varchar(20),
	suicides_no integer,
	suicides_100k_pop decimal,
	gdp_per_capita decimal,
	generation varchar(30),
	constraint pk_suicidio primary key(code)
);


select * from suicidio where country = 'Brazil';
select count(*)qtde from suicidio where country = 'Brazil';

select 
	age, 
	sum(suicides_no) sum_cases, 
	count(*)qtde 
from suicidio where country = 'Brazil' group by age;

select 
	generation,
	sum(suicides_no) sum_cases, 
	count(*)qtde 
from suicidio where country = 'Brazil' group by generation;

select 
	year,
	sum(suicides_no) sum_cases, 
	count(*)qtde 
from suicidio where country = 'Brazil' group by year order by year;


