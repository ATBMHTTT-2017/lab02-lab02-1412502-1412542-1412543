-- Chi truong du an duoc phep xem va cap nhat thong tin chi tieu du an minh quan ly
create or replace function Select_ChiTieuCuaDuAn (p_schema varchar2, p_object varchar2)
return varchar2
as
  getUser char(5);
	getMaDA char(3);
	flag number;
begin
    getUser := sys_context('userenv', 'session_user');
    select count(*) into flag from Lab01.DUAN
    where truongDA = getUser;
  
    if (flag != 0) then
      select maDA into getMaDA from QTV.DUAN where truongDA = getUser;
      return 'duAn = ' || getMaDA;
    else return ''; 
    end if;
end;

  
--Gan chinh sach vao bang CHITIEU
begin
  dbms_rls.add_policy
  (
      object_schema => 'Lab01',
      object_name => 'CHITIEU',
      policy_name => 'Select_ChiTieuCuaDuAn_policy',
      policy_function => 'Select_ChiTieuCuaDuAn',
      statement_types => 'select, update, insert, delete',
      update_check => TRUE    
  );
end;