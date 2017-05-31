-- encrypt Luong

declare 
    key_string  varchar2(8 char) := '1412502';
    key_raw raw(128) := UTL_RAW.CAST_TO_RAW(CONVERT(key_string,'AL32UTF8','US7ASCII'));

alter table 
   NhanVien_1412502_1412542_1412543
add Luong_encrypt raw(128);

update NhanVien_1412502_1412542_1412543 set Luong_encrypt = DBMS_CRYPTO.Encrypt(src  => UTL_RAW.cast_to_raw(Luong),
                                           typ  => DBMS_CRYPTO.DES_CBC_PKCS5,
                                           key  => key_raw);
alter table NhanVien_1412502_1412542_1412543 drop column Luong;

-- Grant select 

grant select on NhanVien_1412502_1412542_1412543 to r_NhanVien;

create or replace function VPD_Luong (p_schema varchar2, p_obj varchar2)
Return varchar2
As
   USERNAME char(5 byte);
begin
    username := sys_context('userenv', 'SESSION_USER');
    return 'MANV = ' || username;
End VPD_Luong;

begin
SYS.dbms_rls.add_policy 
(
  OBJECT_SCHEMA => 'QTV',
  object_name => 'V_VPD_CAU1',
  policy_name => 'VPD_Cau1b',
  function_schema => 'QTV',
  policy_function => 'VPD_Luong',
  sec_relevant_cols=> 'Luong_encrypt',
  sec_relevant_cols_opt=>dbms_rls.ALL_ROWS
); 
end

-- Create procedure
create or replace procedure p_NhanVien_SelectLuong
( 
key_string in varchar2
)
as
begin
       declare
             key_raw raw(128) UTL_RAW.CAST_TO_RAW(CONVERT(key_string,'AL32UTF8','US7ASCII'));
       begin
             select dbms_crypto.decrypt
                (
                    src => NhanVien_1412502_1412542_1412543.Luong_encrypt,
                    typ => DBMS_CRYPTO.DES_CBC_PKCS5,
                    key => key_raw
                )
             from NhanVien_1412502_1412542_1412543;
       end;
end p_NhanVien_SelectLuong;

-- Grant execute procedure
grant execute on p_NhanVien_SelectLuong to NhanVien_1412502_1412542_1412543;

