create table ChiTieu
(
  MaChiTieu int primary key,
  TenChiTieu varchar2(50 char),
  SoTien int,
  DuAn char(3)
);

delete 
from ChiTieu;

alter table 
   CHITIEU
modify 
( 
   soTien    RAW(16)
);

insert into ChiTieu values (1, 'Food', '20', '001');
insert into ChiTieu values (2, 'Travel', '50', '001');
insert into ChiTieu values (3, 'Facilities', '100', '001');

insert into ChiTieu values (4, 'Food', '20', '002');
insert into ChiTieu values (5, 'Travel', '50', '002');
insert into ChiTieu values (6, 'Facilities', '100', '002');

insert into ChiTieu values (7, 'Food', '20', '003');
insert into ChiTieu values (8, 'Travel', '50', '003');
insert into ChiTieu values (9, 'Facilities', '100', '003');

insert into ChiTieu values (10, 'Food', '20', '004');
insert into ChiTieu values (11, 'Travel', '50', '004');
insert into ChiTieu values (12, 'Facilities', '100', '004');

insert into ChiTieu values (13, 'Food', '20', '004');
insert into ChiTieu values (14, 'Travel', '50', '004');
insert into ChiTieu values (15, 'Facilities', '100', '004');

--- Create package
CREATE OR REPLACE PACKAGE Crypt AS
   FUNCTION encrypt (p_text  IN  VARCHAR2) RETURN RAW;
  
   FUNCTION decrypt (p_raw  IN  RAW) RETURN VARCHAR2;
END;
   
-- Crypt body
CREATE OR REPLACE PACKAGE BODY Crypt AS
    key_string  VARCHAR2(7) := '1412543';
    key_raw     RAW(128)    := UTL_RAW.cast_to_raw(key_string);
    g_pad_chr VARCHAR2(1) := '~';

    FUNCTION encrypt (p_text  IN  VARCHAR2) RETURN RAW IS
        input_string VARCHAR2(128) := p_text;
        encrypt_raw  RAW(128);
       BEGIN
        encrypt_raw := DBMS_CRYPTO.Encrypt(src  => UTL_RAW.cast_to_raw(input_string),
                                           typ  => DBMS_CRYPTO.DES_CBC_PKCS5,
                                           key  => key_raw);
        RETURN encrypt_raw;
       END;
      
    FUNCTION decrypt (p_raw  IN  RAW) RETURN VARCHAR2 IS
          decrypt_string  VARCHAR2(128);
      BEGIN
          decrypt_string := DBMS_CRYPTO.Decrypt(src   => p_raw,
                                                typ   => DBMS_CRYPTO.DES_CBC_PKCS5,
                                                key   => key_raw);
                                        
          RETURN RTrim(UTL_RAW.cast_to_varchar2(decrypt_string), g_pad_chr);
       END;
END Crypt;

-- Grant
grant execute on Crypt to r_TruongDuAn;
GRANT select, insert, delete, update ON CHITIEU TO r_TruongDuAn;

--- ******** Su dung cac user la truong du an de thuc hien **********
-- Update table user user TruongDuAn ( NV021, NV022, NV023, NV024, NV025 
-- Encrypt soTien
UPDATE QTV.CHITIEU 
SET soTien = QTV.Crypt.encrypt(soTien);

select * from QTV.CHITIEU;

-- Decrypt soTien
select MaChiTieu, TenChiTieu, QTV.Crypt.decrypt(soTien) as SoTien, DuAn
from QTV.CHITIEU;

--Trigger
CREATE OR REPLACE TRIGGER Chitieu_Insert
BEFORE INSERT on CHITIEU
FOR EACH ROW
DECLARE
BEGIN
  :new.soTien := Crypt.encrypt(UTL_RAW.cast_to_varchar2(:new.soTien));
END;

CREATE OR REPLACE TRIGGER Chitieu_Update
BEFORE UPDATE ON CHITIEU
FOR EACH ROW
DECLARE
BEGIN
  :new.soTien := Crypt.encrypt(UTL_RAW.cast_to_varchar2(:new.soTien));
END;

insert into QTV.ChiTieu values (16, 'Food', '20', '001');

--Cap quyen tao view co r_TruongDuAn
GRANT CREATE ANY VIEW TO r_TruongDuAn;

-- Cap quyen xem thong tin giai ma cho mot so user bang cach tao view giai ma soTien va cap quyen select cho User
CREATE OR REPLACE VIEW v_ChiTieu
AS
  SELECT MaChiTieu, TenChiTieu, QTV.Crypt.Decrypt(soTien) as SoTien, DuAn
  FROM QTV.CHITIEU;
  

GRANT SELECT ON v_ChiTieu TO NV001;

