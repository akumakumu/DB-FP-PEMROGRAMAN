CREATE DATABASE ppob

USE ppob

-- Table akun
CREATE TABLE akun
(
usrname varchar(32) NOT NULL PRIMARY KEY,
passwd varchar(32) NOT NULL,
nama_depan varchar(32),
nama_belakang varchar(32),
email varchar(64),
no_telp int
)

-- Table paket data
CREATE TABLE paket_data
(
penyedia varchar(32),
paket varchar(64),
harga int
)

-- Table Riwayat
CREATE TABLE riwayat
(
nomor_transaksi int IDENTITY(1,1) NOT NULL,
kategori varchar(32),
jenis_transaksi varchar(32),
nama_pelanggan varchar(64),
nomor_pelanggan int,
periode varchar(32),
id_pelanggan int,
email_pelanggan varchar(64),
total_tagihan int
)

-- Insert Record paket_data
INSERT INTO paket_data VALUES
('XL','Xtra Combo 5 GB + 10 GB YT',56000),
('XL','Xtra Combo 15 GB + 30 GB YT',83000),
('XL','HotRod 1 GB 7 Hari',8500),
('XL','HotRod 3 GB 10 Hari',9100),
('XL','Data Pure 3 GB 30 Hari',28700),
('XL','Data Pure 8 GB 30 Hari',72400),
('XL','Xtra Kuota Midnight 5 GB',10900),
('XL','Xtra Kuota 30 GB',12000),
('Indosat','Yellow 1 Hari',3900),
('Indosat','Yellow 7 Hari',9500),
('Indosat','Freedom 5 GB 3 Hari',14500),
('Indosat','Freedom 15 GB 30 Hari',71400),
('Indosat','Edukasi 16 GB 30 Hari',16000),
('Indosat','Freedom Combo 8 GB 30 Hari',33300),
('Indosat','Freedom Combo 15 GB + 1 GB',47200),
('Indosat','Nelpon Sepuasnya',10800),
('Three','AddOn 3 GB',10000),
('Three','AON 50 GB 24 Jam',141000),
('Three','AON 3 GB + Nelpon 30 Menit',27800),
('Three','AON 6 GB + Nelpon 60 Menit',37000),
('Three','AON 16 GB',83500),
('Three','AON Unlimited 12 GB',51200),
('Three','AON Unlimited 30 GB',85100),
('Three','Edukasi 15 GB 30 Hari',15000),
('Telkomsel','Data 5 GB 7 Hari',55300),
('Telkomsel','Data 10 GB 30 Hari',86700),
('Telkomsel','Data 5 GB + Nelpon 30 Menit',57000),
('Telkomsel','Data 10 GB + Nelpon 60 Menit',100000),
('Telkomsel','Internet Combo 10 GB 30 Hari',26000),
('Telkomsel','GameMax 5 GB 24 Jam',23500),
('Telkomsel','Unlimited 30 Hari',75000),
('Telkomsel','Zoom 15 GB 30 Hari',31500),
('Smartfren','Unlimited 25.000',27000),
('Smartfren','Unlimited 50.000',52000),
('Smartfren','Unlimited 100.000',102000),
('Smartfren','Internet Volume 10 GB',56000),
('Smartfren','Internet Volume 16 GB',76800),
('Smartfren','Internet Volume 100 GB',135200),
('Smartfren','Super 4G 10 GB 7 Hari',10800),
('Smartfren','Super 4G 10 GB 30 Hari',20600),
('Axis','AIGO Bronet 1 GB 7 Hari',15200),
('Axis','AIGO Bronet 5 GB 24 Jam',20500),
('Axis','AIGO Bronet 10 GB 24 Jam',30700),
('Axis','AIGO Bronet 5 GB 15 Hari',23100),
('Axis','AIGO Bronet 16 GB 60 Hari',110800),
('Axis','Paket 5 GB + Nelpon 30 Menit',43000),
('Axis','Kangen Nelpon 60 Menit',13400),
('Axis','Kangen Nelpon 120 Menit',24000),
('ByU','10 GB 1 Hari',10000),
('ByU','5 GB 14 Hari',15000),
('ByU','50 GB 30 Hari',120000),
('ByU','75 GB 30 Hari',150000),
('ByU','10 GB + Nelpon Sepuasnya',50000),
('ByU','50 GB + Nelpon Sepuasnya',120000),
('ByU','Nelpon 120 Menit + 100 SMS',26000),
('ByU','Nelpon dan SMS Sepuasnya',54000),
('Flexi','1 GB',2500),
('Flexi','5 GB 7 Hari',15000),
('Flexi','10 GB 30 Hari',50000),
('Flexi','50 GB NONSTOP',240000),
('Flexi','5 GB + Nelpon 60 Menit',20000),
('Flexi','10 GB + 1000 SMS',68000),
('Flexi','Nelpon dan SMS Sepuasnya',53000),
('Flexi','Edukasi',15000)

-- Insert Record Akun
INSERT INTO akun (usrname, passwd)
VALUES ('admin', 'notadmin')

SELECT * FROM akun

SELECT * FROM paket_data