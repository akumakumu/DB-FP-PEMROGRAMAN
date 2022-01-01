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
);

-- Table paket data
CREATE TABLE paket_data
(
penyedia varchar(32),
paket varchar(64),
harga int
);

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
('Indosat','Edukasi 16 GB 30 Hari',),
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
('Smartfren','Internet Volume 10 GB',),
('Smartfren','Internet Volume 16 GB',),
('Smartfren','Internet Volume 100 GB',),
('Smartfren','Super 4G 10 GB 7 Hari',),
('Smartfren','Super 4G 10 GB 30 Hari',),

-- Insert Record Akun
INSERT INTO akun (usrname, passwd)
VALUES ('admin', 'notadmin');

SELECT * FROM akun;