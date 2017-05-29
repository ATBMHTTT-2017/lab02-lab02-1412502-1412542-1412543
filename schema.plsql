insert into ChiNhanh_1412502_1412542_1412543 values(1, 'Main branch', null); 
insert into ChiNhanh_1412502_1412542_1412543 values(2, 'TP Ho Chi Minh', null);
insert into ChiNhanh_1412502_1412542_1412543 values(3, 'Da Nang', null);
insert into Chinhanh_1412502_1412542_1412543 values(4, 'Hai Phong', null);
insert into Chinhanh_1412502_1412542_1412543 values(5, 'Ha Noi', null); 

--------------------------------------------------------------------------------------------------------------------------------------------

insert into phongban_1412502_1412542_1412543 values ('NS1', 'Human resources', null, null, 5, 1);
insert into phongban_1412502_1412542_1412543 values ('KH1', 'Planning', null, null, 5,1);
insert into phongban_1412502_1412542_1412543 values ('KT1', 'Accounting', null, null,3,1); 

insert into PhongBan_1412502_1412542_1412543 values ('NS2', 'Human resources HCM', null, null,2, 2);
insert into PhongBan_1412502_1412542_1412543 values ('KH2', 'Planning HCM', null, null, 4, 2);
insert into PhongBan_1412502_1412542_1412543 values ('KT2', 'Accounting HCM', null, null, 2, 2);

insert into PhongBan_1412502_1412542_1412543 values ('NS3', 'Human resources DN', null, null,2, 3);
insert into PhongBan_1412502_1412542_1412543 values ('KH3', 'Planning DN', null, null, 4, 3);
insert into PhongBan_1412502_1412542_1412543 values ('KT3', 'Accounting DN', null, null, 2, 3);

insert into PhongBan_1412502_1412542_1412543 values ('NS4', 'Human resources HP', null, null,2, 4);
insert into PhongBan_1412502_1412542_1412543 values ('KH4', 'Planning HP', null, null, 4,4);
insert into PhongBan_1412502_1412542_1412543 values ('KT4', 'Accounting HP', null, null, 2,4);

insert into phongban_1412502_1412542_1412543 values ('NS5', 'Human resources HN', null, null, 2,5);
insert into phongban_1412502_1412542_1412543 values ('KH5', 'Planning HN', null, null, 4,5);
insert into PhongBan_1412502_1412542_1412543 values ('KT5', 'Accounting HN', null, null, 2,5);

--------------------------------------------------------------------------------------------------------------------------------------------

-- trưởng phòng
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV001', 'ALICE', '0901234567', 'nv001@gmail.com', 'HCM', 3000,'NS1',1);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV002', 'ALEX', '0903234567', 'nv002@gmail.com', 'HCM', 3000,'NS2',2);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV003', 'FAY', '0903234587', 'nv003@gmail.com', 'HCM', 3000,'NS3',3);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV004', 'KATY', '0903234567', 'nv004@gmail.com', 'HCM', 3000,'NS4',4);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV005', 'JOHN', '0903284567', 'nv005@gmail.com', 'HCM', 3000,'NS5',5);

insert into NHANVIEN_1412502_1412542_1412543_1412502_1412542_1412543 VALUES('NV006', 'SIMON', '0903234867', 'nv006@gmail.com', 'HCM', 3000,'KH1',1);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV007', 'AMY', '0903234897', 'nv007@gmail.com', 'HCM', 3000,'KH2',2);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV008', 'SOPHIA', '0906234867', 'nv008@gmail.com', 'HCM', 3000,'KH3',3);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV009', 'HAARY', '0901234567', 'nv009@gmail.com', 'Hue', 3000,'KH4',4);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV010', 'ADAM', '0903237567', 'nv010@gmail.com', 'Ca Mau', 3000,'KH5',5);

insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV011', 'LIAM', '0903235587', 'nv011@gmail.com', 'Long An', 3000,'KT1',1);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV012', 'ANNA', '0903234167', 'nv012@gmail.com', 'Tien Giang', 3000,'KT2',2);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV013', 'ISAAC', '0903280567', 'nv013gmail.com', 'Ha Noi', 3000,'KT3',3);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV014', 'JACKSON', '0903434867', 'nv014@gmail.com', 'Hue', 3000,'KT4',4);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV015', 'KEY', '0903234697', 'nv015@gmail.com', 'Buon Me Thuoc', 3000,'KT5',5);

-- TRƯỞNG CHI NHÿNH
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV016', 'ELLA', '0906238337', 'nv016@gmail.com', 'Lao Cao', 4000,NULL,1);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV017', 'LILY', '0903234697', 'nv017@gmail.com', 'Ha Tinh', 4000,NULL,2);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV018', 'JOLIE', '0903235697', 'nv018@gmail.com', 'Nghe An', 4000,NULL,3);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV019', 'DANIEL', '0933234697', 'nv019@gmail.com', 'Thanh Hoa', 4000,NULL,4);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV020', 'WILLIAM', '0903235486', 'nv020@gmail.com', 'Hai Duong', 4000,NULL,5);

-- TRƯỞNG DỰ ÁN
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV021', 'BLAKE', '0903842697', 'nv02@gmail.com', 'Quang Ngai', 2500,'KH1',1);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV022', 'KRIS', '0916734697', 'nv022@gmail.com', 'Binh Dinh', 2500,'KH2',2);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV023', 'JENNIFER', '0903852697', 'nv023@gmail.com', 'Quang Nam', 2500,'KH3',3);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV024', 'VICTORIA', '0903237539', 'nv024@gmail.com', 'Dong Nai', 2500,'KH4',4);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV025', 'KAI', '0903234269', 'nv025@gmail.com', 'Vinh Long', 2500,'KH5',5);

-- NHÂN VIÊN
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV026', 'ALITA', '0903843269', 'nv026@gmail.com', 'Phu Quoc', 1500,'NS1',1);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV027', 'JELIME', '0903843269', 'nv027@gmail.com', 'An Giang', 1500,'NS2',2);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV028', 'ADINA', '0903887669', 'nv028@gmail.com', 'Hau Giang', 1500,'NS3',3);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV029', 'JACK', '0903843201', 'nv029@gmail.com', 'Tra Vinh', 1500,'NS4',4);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV030', 'THOMAS', '0947543269', 'nv030@gmail.com', 'Binh Thuan', 1500,'NS5',5);

insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV031', 'BELINDA', '0936843269', 'nv031@gmail.com', 'Ha Noi', 1500,'KH1',1);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV032', 'Brittany', '0947510269', 'nv032@gmail.com', 'Ninh Thuan', 1500,'KH2',2);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV033', 'James', '0936843243', 'nv033@gmail.com', 'Nha Trang', 1500,'KH3',3);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV034', 'Candice', '0947800269', 'nv034@gmail.com', 'Vung Tau', 1500,'KH4',4);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV035', 'Ethan', '0936913243', 'nv035@gmail.com', 'Phan Thiet', 1500,'KH5',5);

insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV036', 'Morgan', '0903875269', 'nv036@gmail.com', 'Sapa', 1500,'KH1',1);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV037', 'Destiny', '0909643269', 'nv03@gmail.com', 'Nghe Tinh', 1500,'KH2',2);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV038', 'Sydney', '0903887269', 'nv038@gmail.com', 'Nghe An', 1500,'KH3',3);
insert into NHANVIEN_1412502_1412542_1412543_1412502_1412542_1412543 VALUES('NV039', 'Sarah', '0903843246', 'nv039@gmail.com', 'KonTum', 1500,'KH4',4);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV040', 'Elizabeth', '0947543281', 'nv040@gmail.com', 'Phu Yen', 1500,'KH5',5);

insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV041', 'Justin', '0936876169', 'nv041@gmail.com', 'Da Nang', 1500,'KT1',1);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV042', 'Lucas', '0947510349', 'nv042@gmail.com', 'Binh Duong', 1500,'KT2',2);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV043', 'Jayden', '0936843044', 'nv043@gmail.com', 'Quang Binh', 1500,'KT3',3);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV044', 'Oscar', '0978400269', 'nv044@gmail.com', 'HCM', 1500,'KT4',4);
insert into NHANVIEN_1412502_1412542_1412543 VALUES('NV045', 'Jayden', '0936354243', 'nv045@gmail.com', 'Binh Phuoc', 1500,'KT5',5);

---------------------------------------------------------------------------------------------------------------------------------------------
-- update TRƯỞNG CHI NHÿNH
update ChiNhanh_1412502_1412542_1412543 set TruongChiNhanh = 'NV016' where MaCN = 1;
update ChiNhanh_1412502_1412542_1412543 set TruongChiNhanh = 'NV017' where MaCN = 2;
update ChiNhanh_1412502_1412542_1412543 set TruongChiNhanh = 'NV018' where MaCN = 3;
update ChiNhanh_1412502_1412542_1412543 set TruongChiNhanh = 'NV019' where MaCN = 4;
update ChiNhanh_1412502_1412542_1412543 set TruongChiNhanh = 'NV020' where MaCN = 5;

-- update TRƯỞNG PHÒNG
update PhongBan_1412502_1412542_1412543 set TruongPhong = 'NV001' where MaPhong = 'NS1';
update PhongBan_1412502_1412542_1412543 set TruongPhong = 'NV002' where MaPhong = 'NS2';
update PhongBan_1412502_1412542_1412543 set TruongPhong = 'NV003' where MaPhong = 'NS3';
update PhongBan_1412502_1412542_1412543 set TruongPhong = 'NV004' where MaPhong = 'NS4';
update PhongBan_1412502_1412542_1412543 set TruongPhong = 'NV005' where MaPhong = 'NS5';

update PhongBan_1412502_1412542_1412543 set TruongPhong = 'NV006' where MaPhong = 'KH1';
update PhongBan_1412502_1412542_1412543 set TruongPhong = 'NV007' where MaPhong = 'KH2';
update PhongBan_1412502_1412542_1412543 set TruongPhong = 'NV008' where MaPhong = 'KH3';
update PhongBan_1412502_1412542_1412543 set TruongPhong = 'NV009' where MaPhong = 'KH4';
update PhongBan_1412502_1412542_1412543 set TruongPhong = 'NV010' where MaPhong = 'KH5';

update PhongBan_1412502_1412542_1412543 set TruongPhong = 'NV011' where MaPhong = 'KT1';
update PhongBan_1412502_1412542_1412543 set TruongPhong = 'NV012' where MaPhong = 'KT2';
update PhongBan_1412502_1412542_1412543 set TruongPhong = 'NV013' where MaPhong = 'KT3';
update PhongBan_1412502_1412542_1412543 set TruongPhong = 'NV014' where MaPhong = 'KT4';
update PhongBan_1412502_1412542_1412543 set TruongPhong = 'NV015' where MaPhong = 'KT5';

------------------------------------------------------------------------------------------------------------------------------------------------

insert into DUAN_1412502_1412542_1412543 values ('001', 'Project 1', 30000, 'KH1', 'NV021');
insert into DUAN_1412502_1412542_1412543_1412502_1412542_1412543 values ('002', 'Project 2', 40000, 'KH2', 'NV022');
insert into DUAN_1412502_1412542_1412543 values ('003', 'Project 3', 25000, 'KH3', 'NV023');
insert into DUAN_1412502_1412542_1412543 values ('004', 'Project 4', 45000, 'KH4', 'NV024');
insert into DUAN_1412502_1412542_1412543 values ('005', 'Project 5', 35000, 'KH5', 'NV025');
-----------------------------------------------------------------------------------------------------------------------------------------------

insert into PhanCong_1412502_1412542_1412543 values ('NV021', '001', 'Leader', 200);
insert into PhanCong_1412502_1412542_1412543 values ('NV022', '002', 'Leader', 200);
insert into PhanCong_1412502_1412542_1412543 values ('NV023', '003', 'Leader', 200);
insert into PhanCong_1412502_1412542_1412543 values ('NV024', '004', 'Leader', 200);
insert into PhanCong_1412502_1412542_1412543 values ('NV025', '005', 'Leader', 200);

insert into PhanCong_1412502_1412542_1412543 values ('NV031', '001', 'Participant', 100);
insert into PhanCong_1412502_1412542_1412543 values ('NV032', '001', 'Participant', 100);

insert into PhanCong_1412502_1412542_1412543 values ('NV033', '002', 'Participant', 100);
insert into PhanCong_1412502_1412542_1412543 values ('NV034', '002', 'Participant', 100);

insert into PhanCong_1412502_1412542_1412543 values ('NV035', '003', 'Participant', 100);
insert into PhanCong_1412502_1412542_1412543 values ('NV036', '003', 'Participant', 100);

insert into PhanCong_1412502_1412542_1412543 values ('NV037', '004', 'Participant', 100);
insert into PhanCong_1412502_1412542_1412543 values ('NV038', '004', 'Participant', 100);

insert into PhanCong_1412502_1412542_1412543 values ('NV039', '005', 'Participant', 100);
insert into PhanCong_1412502_1412542_1412543 values ('NV040', '005', 'Participant', 100);
-------------------------------------------------------------------------------------------------------------------------------------------

insert into ChiTieu_1412502_1412542_1412543_1412502_1412542_1412543 values (1, 'Food', 20, '001');
insert into ChiTieu_1412502_1412542_1412543 values (2, 'Travel', 50, '001');
insert into ChiTieu_1412502_1412542_1412543 values (3, 'Facilities', 100, '001');

insert into ChiTieu_1412502_1412542_1412543 values (4, 'Food', 20, '002');
insert into ChiTieu_1412502_1412542_1412543 values (5, 'Travel', 50, '002');
insert into ChiTieu_1412502_1412542_1412543 values (6, 'Facilities', 100, '002');

insert into ChiTieu_1412502_1412542_1412543 values (7, 'Food', 20, '003');
insert into ChiTieu_1412502_1412542_1412543 values (8, 'Travel', 50, '003');
insert into ChiTieu_1412502_1412542_1412543 values (9, 'Facilities', 100, '003');

insert into ChiTieu_1412502_1412542_1412543 values (10, 'Food', 20, '004');
insert into ChiTieu_1412502_1412542_1412543 values (11, 'Travel', 50, '004');
insert into ChiTieu_1412502_1412542_1412543 values (12, 'Facilities', 100, '004');

insert into ChiTieu_1412502_1412542_1412543 values (13, 'Food', 20, '004');
insert into ChiTieu_1412502_1412542_1412543 values (14, 'Travel', 50, '004');
insert into ChiTieu_1412502_1412542_1412543 values (15, 'Facilities', 100, '004');


------------- ****  CREATE ROLE   ***  --------------
create role r_TruongPhong;
create role r_TruongChiNhanh;
create role r_TruongDuAn;
create role r_NhanVien;

grant r_TruongPhong to nv001, nv002, nv003, nv004, nv005, nv006, nv007, nv008, nv009, nv010, nv011, nv012, nv013, nv014, nv015;
grant r_TruongChiNhanh to nv016, nv017, nv018, nv019, nv020;
grant r_TruongDuAn to nv021, nv022, nv023, nv024, nv025;
grant r_NhanVien to nv026, nv027, nv028, nv029, nv030, nv031, nv032, nv033, nv034, nv035, nv036, nv037, nv038, nv039, nv040, nv041, nv042, nv043, nv044, nv045;
