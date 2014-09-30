delimiter //
create procedure newDateTime()
begin
declare a int default 6;
declare b int default 1;
simple_loop: loop
update xdate set xdate.date = concat_ws('.', xdate.year, xdate.month, xdate.day) where id = b;
set b = b + 1;
if b = a then
	leave simple_loop;
end if;
end loop simple_loop;
end //
delimiter ;

call newDateTime();
