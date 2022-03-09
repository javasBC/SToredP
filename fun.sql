create table "Movies" (
	"id" serial not null,
	"title" text not null,
	"year" int ,
	"cost" int8,
	"genre" text,
	"len" int2,
	primary key("id"));
  
  
  
  
  insert into "Movies" ("title","cost","len","year","genre")
values('go0',1,1,12,'action')
,('go1',1,1,12,'action')
,('go2',1,1,12,'drama')
,('go3',1,1,12,'horror')
,('go4',1,1,12,'action')
,('go5',1,1,12,'wwww')
,('go6',1,1,12,'ssss')
,('go7',1,1,12,'zzzz');





--CREATE function hello()
--returns text
--language plpgsql
--AS
--$$
--BEGIN
--	RETURN 'hii from the func';
--END;
--$$

select  sum("year") from "Movies"



--CREATE function hello_world() returns varchar
--language plpgsql AS
--    $$
--        BEGIN
--            return CONCAT('hello', 'world', ' ', current_timestamp);
--        end;
--    $$;
--
--select hello_world result from hello_world();
  
  
  
  
  create function my_sum(numb1 float8,numb2 float8)
returns float8
language plpgsql 
AS
$$
	DECLARE
		temp1 float8 := 6;
	begin 
		return temp1+numb1+numb2;
	end;

$$
  



CREATE or replace FUNCTION  rt()
returns TABLE("id1" int ,"title1" text )
language plpgsql
as
$$
BEGIN
	RETURN QUERY 
	SELECT "id","title" from "Movies";
END;
$$
