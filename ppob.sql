CREATE DATABASE ppob

USE ppob

-- Table Pulsa
CREATE TABLE pulsa
(
penyedia varchar(32),
nominal int,
harga int
)

-- Table Akun
CREATE TABLE akun
(
usrname varchar(32) NOT NULL PRIMARY KEY,
passwd varchar(32) NOT NULL,
nama_depan varchar(32),
nama_belakang varchar(32),
email varchar(64),
no_telp int
)

-- Table Paket Data
CREATE TABLE paket_data
(
penyedia varchar(32),
paket varchar(64),
harga int
)

-- Tabel Tagihan
CREATE TABLE tagihan
(
nomor_pelanggan int,
nama varchar(64),
daerah varchar(32),
periode varchar(32),
total_tagihan int
)

-- Tabel Game
CREATE TABLE game
(
judul varchar(32),
mikro varchar(16),
harga int
)

-- Tabel Streaming
CREATE TABLE streaming
(
plat_stream varchar(32),
durasi varchar(16),
harga int
)

-- Tabel Voucher
CREATE TABLE voucher
(
nama_dagang varchar(32),
nominal int,
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

-- Record Pulsa
INSERT INTO pulsa VALUES
('XL',5000,6000),
('XL',10000,11000),
('XL',15000,16000),
('XL',20000,21000),
('XL',35000,36000),
('XL',50000,51000),
('XL',100000,101000),
('XL',150000,151000),
('Indosat',5000,7000),
('Indosat',10000,12000),
('Indosat',15000,17000),
('Indosat',20000,22000),
('Indosat',35000,37000),
('Indosat',50000,52000),
('Indosat',100000,102000),
('Indosat',150000,152000),
('Tri',5000,6000),
('Tri',10000,11000),
('Tri',15000,16000),
('Tri',20000,21000),
('Tri',35000,36000),
('Tri',50000,51000),
('Tri',100000,101000),
('Tri',150000,151000),
('Telkomsel',5000,8000),
('Telkomsel',10000,13000),
('Telkomsel',15000,18000),
('Telkomsel',20000,23000),
('Telkomsel',35000,38000),
('Telkomsel',50000,53000),
('Telkomsel',100000,103000),
('Telkomsel',150000,153000),
('Smartfren',5000,7000),
('Smartfren',10000,12000),
('Smartfren',15000,17000),
('Smartfren',20000,22000),
('Smartfren',35000,37000),
('Smartfren',50000,52000),
('Smartfren',100000,102000),
('Smartfren',150000,152000),
('Axis',5000,6000),
('Axis',10000,11000),
('Axis',15000,16000),
('Axis',20000,21000),
('Axis',35000,36000),
('Axis',50000,51000),
('Axis',100000,101000),
('Axis',150000,151000),
('ByU',5000,7000),
('ByU',10000,12000),
('ByU',15000,17000),
('ByU',20000,22000),
('ByU',35000,37000),
('ByU',50000,52000),
('ByU',100000,102000),
('ByU',150000,152000),
('Flexi',5000,6000),
('Flexi',10000,11000),
('Flexi',15000,16000),
('Flexi',20000,21000),
('Flexi',35000,36000),
('Flexi',50000,51000),
('Flexi',100000,101000),
('Flexi',150000,151000)

-- Record Akun
INSERT INTO akun (usrname, passwd) VALUES
('admin', 'notadmin')

-- Record Paket Data
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
('Tri','AddOn 3 GB',10000),
('Tri','AON 50 GB 24 Jam',141000),
('Tri','AON 3 GB + Nelpon 30 Menit',27800),
('Tri','AON 6 GB + Nelpon 60 Menit',37000),
('Tri','AON 16 GB',83500),
('Tri','AON Unlimited 12 GB',51200),
('Tri','AON Unlimited 30 GB',85100),
('Tri','Edukasi 15 GB 30 Hari',15000),
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

SELECT * FROM pulsa

SELECT * FROM akun

SELECT * FROM paket_data