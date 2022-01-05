CREATE DATABASE ppob

USE ppob

-- Tabel Akun
CREATE TABLE akun
(
usrname varchar(32) PRIMARY KEY,
passwd varchar(32) NOT NULL,
nama_depan varchar(32),
nama_belakang varchar(32),
email_akun varchar(64),
no_telp int
)

-- Tabel Produk
CREATE TABLE produk
(
id_produk varchar(16) PRIMARY KEY,
kategori_produk varchar(32) CHECK (kategori_produk IN ('Isi Ulang','Tagihan','Hiburan')) NOT NULL,
jenis_produk varchar(32) CHECK (jenis_produk IN ('Pulsa','Paket Data','E-Wallet','Listrik PLN','Game','Streaming','Voucher')) NOT NULL,
nama_produk varchar(32) NOT NULL,
nominal varchar(64) NOT NULL,
harga int NOT NULL
)

-- Tabel Tagihan
CREATE TABLE tagihan
(
id_tagihan varchar(16) PRIMARY KEY,
kategori_tagihan varchar(32) CHECK (kategori_tagihan = 'Tagihan') NOT NULL,
jenis_produk varchar(32) CHECK (jenis_produk IN ('Kartu Perdana','PLN','PDAM','Internet')) NOT NULL,
nomor_tagihan int NOT NULL,
nama_pelanggan varchar(64) NOT NULL,
daerah varchar(32) NOT NULL,
periode varchar(32) CHECK (periode IN ('Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember')) NOT NULL,
total_tagihan int NOT NULL
)

-- Tabel Pembeli
CREATE TABLE pembeli
(
id_pembeli int IDENTITY(1,1) PRIMARY KEY,
nomor_pembeli numeric,
userid_pembeli varchar(32),
email varchar(64)
)

-- Tabel Transaksi
CREATE TABLE transaksi
(
id_transaksi int IDENTITY(1,1) PRIMARY KEY,
id_produk varchar(16) FOREIGN KEY REFERENCES produk(id_produk),
id_tagihan varchar(16) FOREIGN KEY REFERENCES tagihan(id_tagihan),
id_pembeli int FOREIGN KEY REFERENCES pembeli(id_pembeli)
)

-- Tabel Pembayaran
CREATE TABLE pembayaran
(
id_pembayaran int IDENTITY(1,1) PRIMARY KEY,
id_transaksi int FOREIGN KEY REFERENCES transaksi(id_transaksi),
total_bayar int
)

-- Record Akun
INSERT INTO akun (usrname, passwd) VALUES
('admin','notadmin')

-- Record Produk Pulsa
INSERT INTO produk VALUES
('XL01','Isi Ulang','Pulsa','XL','Rp5.000',6000),
('XL02','Isi Ulang','Pulsa','XL','Rp10.000',11000),
('XL03','Isi Ulang','Pulsa','XL','Rp15.000',16000),
('XL04','Isi Ulang','Pulsa','XL','Rp20.000',21000),
('XL05','Isi Ulang','Pulsa','XL','Rp35.000',36000),
('XL06','Isi Ulang','Pulsa','XL','Rp50.000',51000),
('XL07','Isi Ulang','Pulsa','XL','Rp100.000',101000),
('XL08','Isi Ulang','Pulsa','XL','Rp150.000',151000),
('Indosat01','Isi Ulang','Pulsa','Indosat','Rp5.000',7000),
('Indosat02','Isi Ulang','Pulsa','Indosat','Rp10.000',12000),
('Indosat03','Isi Ulang','Pulsa','Indosat','Rp15.000',17000),
('Indosat04','Isi Ulang','Pulsa','Indosat','Rp20.000',22000),
('Indosat05','Isi Ulang','Pulsa','Indosat','Rp35.000',37000),
('Indosat06','Isi Ulang','Pulsa','Indosat','Rp50.000',52000),
('Indosat07','Isi Ulang','Pulsa','Indosat','Rp100.000',102000),
('Indosat08','Isi Ulang','Pulsa','Indosat','Rp150.000',152000),
('Tri01','Isi Ulang','Pulsa','Tri','Rp5.000',6000),
('Tri02','Isi Ulang','Pulsa','Tri','Rp10.000',11000),
('Tri03','Isi Ulang','Pulsa','Tri','Rp15.000',16000),
('Tri04','Isi Ulang','Pulsa','Tri','Rp20.000',21000),
('Tri05','Isi Ulang','Pulsa','Tri','Rp35.000',36000),
('Tri06','Isi Ulang','Pulsa','Tri','Rp50.000',51000),
('Tri07','Isi Ulang','Pulsa','Tri','Rp100.000',101000),
('Tri08','Isi Ulang','Pulsa','Tri','Rp150.000',151000),
('Telkomsel01','Isi Ulang','Pulsa','Telkomsel','Rp5.000',8000),
('Telkomsel02','Isi Ulang','Pulsa','Telkomsel','Rp10.000',13000),
('Telkomsel03','Isi Ulang','Pulsa','Telkomsel','Rp15.000',18000),
('Telkomsel04','Isi Ulang','Pulsa','Telkomsel','Rp20.000',23000),
('Telkomsel05','Isi Ulang','Pulsa','Telkomsel','Rp35.000',38000),
('Telkomsel06','Isi Ulang','Pulsa','Telkomsel','Rp50.000',53000),
('Telkomsel07','Isi Ulang','Pulsa','Telkomsel','Rp100.000',103000),
('Telkomsel08','Isi Ulang','Pulsa','Telkomsel','Rp150.000',153000),
('Smartfren01','Isi Ulang','Pulsa','Smartfren','Rp5.000',7000),
('Smartfren02','Isi Ulang','Pulsa','Smartfren','Rp10.000',12000),
('Smartfren03','Isi Ulang','Pulsa','Smartfren','Rp15.000',17000),
('Smartfren04','Isi Ulang','Pulsa','Smartfren','Rp20.000',22000),
('Smartfren05','Isi Ulang','Pulsa','Smartfren','Rp35.000',37000),
('Smartfren06','Isi Ulang','Pulsa','Smartfren','Rp50.000',52000),
('Smartfren07','Isi Ulang','Pulsa','Smartfren','Rp100.000',102000),
('Smartfren08','Isi Ulang','Pulsa','Smartfren','Rp150.000',152000),
('Axis01','Isi Ulang','Pulsa','Axis','Rp5.000',6000),
('Axis02','Isi Ulang','Pulsa','Axis','Rp10.000',11000),
('Axis03','Isi Ulang','Pulsa','Axis','Rp15.000',16000),
('Axis04','Isi Ulang','Pulsa','Axis','Rp20.000',21000),
('Axis05','Isi Ulang','Pulsa','Axis','Rp35.000',36000),
('Axis06','Isi Ulang','Pulsa','Axis','Rp50.000',51000),
('Axis07','Isi Ulang','Pulsa','Axis','Rp100.000',101000),
('Axis08','Isi Ulang','Pulsa','Axis','Rp150.000',151000),
('ByU01','Isi Ulang','Pulsa','ByU','Rp5.000',7000),
('ByU02','Isi Ulang','Pulsa','ByU','Rp10.000',12000),
('ByU03','Isi Ulang','Pulsa','ByU','Rp15.000',17000),
('ByU04','Isi Ulang','Pulsa','ByU','Rp20.000',22000),
('ByU05','Isi Ulang','Pulsa','ByU','Rp35.000',37000),
('ByU06','Isi Ulang','Pulsa','ByU','Rp50.000',52000),
('ByU07','Isi Ulang','Pulsa','ByU','Rp100.000',102000),
('ByU08','Isi Ulang','Pulsa','ByU','Rp150.000',152000),
('Flexi01','Isi Ulang','Pulsa','Flexi','Rp5.000',6000),
('Flexi02','Isi Ulang','Pulsa','Flexi','Rp10.000',11000),
('Flexi03','Isi Ulang','Pulsa','Flexi','Rp15.000',16000),
('Flexi04','Isi Ulang','Pulsa','Flexi','Rp20.000',21000),
('Flexi05','Isi Ulang','Pulsa','Flexi','Rp35.000',36000),
('Flexi06','Isi Ulang','Pulsa','Flexi','Rp50.000',51000),
('Flexi07','Isi Ulang','Pulsa','Flexi','Rp100.000',101000),
('Flexi08','Isi Ulang','Pulsa','Flexi','Rp150.000',151000)

-- Record Produk Paket Data
INSERT INTO produk VALUES
('XL09','Isi Ulang','Paket Data','XL','Xtra Combo + 5 GB 10 GB YT',56000),
('XL10','Isi Ulang','Paket Data','XL','Xtra Combo + 15 GB 30 GB YT',83000),
('XL11','Isi Ulang','Paket Data','XL','HotRod 1 GB 7 Hari',8500),
('XL12','Isi Ulang','Paket Data','XL','HotRod 3 GB 10 Hari',9100),
('XL13','Isi Ulang','Paket Data','XL','Data Pure 3 GB 30 Hari',28700),
('XL14','Isi Ulang','Paket Data','XL','Data Pure 8 GB 30 Hari',72400),
('XL15','Isi Ulang','Paket Data','XL','Xtra Kuota Midnight 5 GB',10900),
('XL16','Isi Ulang','Paket Data','XL','Xtra Kuota 30 GB',12000),
('Indosat09','Isi Ulang','Paket Data','Indosat','Yellow 1 Hari',3900),
('Indosat10','Isi Ulang','Paket Data','Indosat','Yellow 7 Hari',9500),
('Indosat11','Isi Ulang','Paket Data','Indosat','Freedom 5 GB 3 Hari',14500),
('Indosat12','Isi Ulang','Paket Data','Indosat','Freedom 15 GB 30 Hari',71400),
('Indosat13','Isi Ulang','Paket Data','Indosat','Edukasi 16 GB 30 Hari',16000),
('Indosat14','Isi Ulang','Paket Data','Indosat','Freedom Combo 8 GB 30 Hari',33300),
('Indosat15','Isi Ulang','Paket Data','Indosat','Freedom Combo 15 GB + 1 GB',47200),
('Indosat16','Isi Ulang','Paket Data','Indosat','Nelpon Sepuasnya',10800),
('Tri09','Isi Ulang','Paket Data','Tri','AddOn 3 GB',10000),
('Tri10','Isi Ulang','Paket Data','Tri','AON 50 GB 24 Jam',141000),
('Tri11','Isi Ulang','Paket Data','Tri','AON 3 GB Nelpon + 30 Menit',27800),
('Tri12','Isi Ulang','Paket Data','Tri','AON 6 GB Nelpon + 60 Menit',37000),
('Tri13','Isi Ulang','Paket Data','Tri','AON 16 GB',83500),
('Tri14','Isi Ulang','Paket Data','Tri','AON Unlimited 12 GB',51200),
('Tri15','Isi Ulang','Paket Data','Tri','AON Unlimited 30 GB',85100),
('Tri16','Isi Ulang','Paket Data','Tri','Edukasi 15 GB 30 Hari',15000),
('Telkomsel09','Isi Ulang','Paket Data','Telkomsel','Data 5 GB 7 Hari',55300),
('Telkomsel10','Isi Ulang','Paket Data','Telkomsel','Data 10 GB 30 Hari',86700),
('Telkomsel11','Isi Ulang','Paket Data','Telkomsel','Data 5 GB + Nelpon 30 Menit',57000),
('Telkomsel12','Isi Ulang','Paket Data','Telkomsel','Data 10 GB + Nelpon 60 Menit',100000),
('Telkomsel13','Isi Ulang','Paket Data','Telkomsel','Internet Combo 10 GB 30 Hari',26000),
('Telkomsel14','Isi Ulang','Paket Data','Telkomsel','GameMax 5 GB 24 Jam',23500),
('Telkomsel15','Isi Ulang','Paket Data','Telkomsel','Unlimited 30 Hari',75000),
('Telkomsel16','Isi Ulang','Paket Data','Telkomsel','Zoom 15 GB 30 Hari',31500),
('Smartfren09','Isi Ulang','Paket Data','Smartfren','Unlimited 25.000',27000),
('Smartfren10','Isi Ulang','Paket Data','Smartfren','Unlimited 50.000',52000),
('Smartfren11','Isi Ulang','Paket Data','Smartfren','Unlimited 100.000',102000),
('Smartfren12','Isi Ulang','Paket Data','Smartfren','Internet Volume 10 GB',56000),
('Smartfren13','Isi Ulang','Paket Data','Smartfren','Internet Volume 16 GB',76800),
('Smartfren14','Isi Ulang','Paket Data','Smartfren','Internet Volume 100 GB',135200),
('Smartfren15','Isi Ulang','Paket Data','Smartfren','Super 4G 10 GB 7 Hari',10800),
('Smartfren16','Isi Ulang','Paket Data','Smartfren','Super 4G 10 GB 30 Hari',20600),
('Axis09','Isi Ulang','Paket Data','Axis','AIGO Bronet 1 GB 7 Hari',15200),
('Axis10','Isi Ulang','Paket Data','Axis','AIGO Bronet 5 GB 24 Jam',20500),
('Axis11','Isi Ulang','Paket Data','Axis','AIGO Bronet 10 GB 24 Jam',30700),
('Axis12','Isi Ulang','Paket Data','Axis','AIGO Bronet 5 GB 15 Hari',23100),
('Axis13','Isi Ulang','Paket Data','Axis','AIGO Bronet 16 GB 60 Hari',110800),
('Axis14','Isi Ulang','Paket Data','Axis','Paket 5 GB + Nelpon 30 Menit',43000),
('Axis15','Isi Ulang','Paket Data','Axis','Kangen Nelpon 60 Menit',13400),
('Axis16','Isi Ulang','Paket Data','Axis','Kangen Nelpon 120 Menit',24000),
('ByU09','Isi Ulang','Paket Data','ByU','10 GB 1 Hari',10000),
('ByU10','Isi Ulang','Paket Data','ByU','5 GB 14 Hari',15000),
('ByU11','Isi Ulang','Paket Data','ByU','50 GB 30 Hari',120000),
('ByU12','Isi Ulang','Paket Data','ByU','75 GB 30 Hari',150000),
('ByU13','Isi Ulang','Paket Data','ByU','10 GB + Nelpon Sepuasnya',50000),
('ByU14','Isi Ulang','Paket Data','ByU','50 GB + Nelpon Sepuasnya',120000),
('ByU15','Isi Ulang','Paket Data','ByU','Nelpon 120 Menit + 100 SMS',26000),
('ByU16','Isi Ulang','Paket Data','ByU','Nelpon dan SMS Sepuasnya',54000),
('Flexi09','Isi Ulang','Paket Data','Flexi','1 GB',2500),
('Flexi10','Isi Ulang','Paket Data','Flexi','5 GB 7 Hari',15000),
('Flexi11','Isi Ulang','Paket Data','Flexi','10 GB 30 Hari',50000),
('Flexi12','Isi Ulang','Paket Data','Flexi','50 GB NONSTOP',240000),
('Flexi13','Isi Ulang','Paket Data','Flexi','5 GB + Nelpon 60 Menit',20000),
('Flexi14','Isi Ulang','Paket Data','Flexi','10 GB + 1000 SMS',68000),
('Flexi15','Isi Ulang','Paket Data','Flexi','Nelpon dan SMS Sepuasnya',53000),
('Flexi16','Isi Ulang','Paket Data','Flexi','Edukasi',15000)

-- Record E-Wallet
INSERT INTO produk VALUES
('Dana01','Isi Ulang','E-Wallet','Dana','Rp20.000',25000),
('Dana02','Isi Ulang','E-Wallet','Dana','Rp50.000',55000),
('Dana03','Isi Ulang','E-Wallet','Dana','Rp100.000',105000),
('Dana04','Isi Ulang','E-Wallet','Dana','Rp200.000',205000),
('Dana05','Isi Ulang','E-Wallet','Dana','Rp500.000',505000),
('Dana06','Isi Ulang','E-Wallet','Dana','Rp.1.000.000',1005000),
('Dana07','Isi Ulang','E-Wallet','Dana','Rp.5.000.000',5005000),
('Dana08','Isi Ulang','E-Wallet','Dana','Rp.10.000.000',10005000),
('Shoppe01','Isi Ulang','E-Wallet','ShoppePay','Rp20.000',25000),
('Shoppe02','Isi Ulang','E-Wallet','ShoppePay','Rp50.000',55000),
('Shoppe03','Isi Ulang','E-Wallet','ShoppePay','Rp100.000',105000),
('Shoppe04','Isi Ulang','E-Wallet','ShoppePay','Rp200.000',205000),
('Shoppe05','Isi Ulang','E-Wallet','ShoppePay','Rp500.000',505000),
('Shoppe06','Isi Ulang','E-Wallet','ShoppePay','Rp.1.000.000',1005000),
('Shoppe07','Isi Ulang','E-Wallet','ShoppePay','Rp.5.000.000',5005000),
('Shoppe08','Isi Ulang','E-Wallet','ShoppePay','Rp.10.000.000',10005000),
('Link01','Isi Ulang','E-Wallet','Link Aja','Rp20.000',25000),
('Link02','Isi Ulang','E-Wallet','Link Aja','Rp50.000',55000),
('Link03','Isi Ulang','E-Wallet','Link Aja','Rp100.000',105000),
('Link04','Isi Ulang','E-Wallet','Link Aja','Rp200.000',205000),
('Link05','Isi Ulang','E-Wallet','Link Aja','Rp500.000',505000),
('Link06','Isi Ulang','E-Wallet','Link Aja','Rp.1.000.000',1005000),
('Link07','Isi Ulang','E-Wallet','Link Aja','Rp.5.000.000',5005000),
('Link08','Isi Ulang','E-Wallet','Link Aja','Rp.10.000.000',10005000),
('GoPay01','Isi Ulang','E-Wallet','GoPay','Rp20.000',25000),
('GoPay02','Isi Ulang','E-Wallet','GoPay','Rp50.000',55000),
('GoPay03','Isi Ulang','E-Wallet','GoPay','Rp100.000',105000),
('GoPay04','Isi Ulang','E-Wallet','GoPay','Rp200.000',205000),
('GoPay05','Isi Ulang','E-Wallet','GoPay','Rp500.000',505000),
('GoPay06','Isi Ulang','E-Wallet','GoPay','Rp.1.000.000',1005000),
('GoPay07','Isi Ulang','E-Wallet','GoPay','Rp.5.000.000',5005000),
('GoPay08','Isi Ulang','E-Wallet','GoPay','Rp.10.000.000',10005000)

-- Record Listrik PLN
INSERT INTO produk VALUES
('PLN01','Isi Ulang','Listrik PLN','PLN','Rp20.000',30000),
('PLN02','Isi Ulang','Listrik PLN','PLN','Rp50.000',60000),
('PLN03','Isi Ulang','Listrik PLN','PLN','Rp100.000',110000),
('PLN04','Isi Ulang','Listrik PLN','PLN','Rp200.000',210000),
('PLN05','Isi Ulang','Listrik PLN','PLN','Rp500.000',510000),
('PLN06','Isi Ulang','Listrik PLN','PLN','Rp.1.000.000',1010000),
('PLN07','Isi Ulang','Listrik PLN','PLN','Rp.5.000.000',5010000),
('PLN08','Isi Ulang','Listrik PLN','PLN','Rp.10.000.000',10010000)

-- Record Game
INSERT INTO produk VALUES
('PUBG01','Hiburan','Game','PUBG','263 UC',47000),
('PUBG02','Hiburan','Game','PUBG','525 UC',92000),
('PUBG03','Hiburan','Game','PUBG','788 UC',135000),
('PUBG04','Hiburan','Game','PUBG','1050 UC',180000),
('PUBG05','Hiburan','Game','PUBG','1375 UC',224000),
('PUBG06','Hiburan','Game','PUBG','1639 UC',270000),
('PUBG07','Hiburan','Game','PUBG','1900 UC',315000),
('PUBG08','Hiburan','Game','PUBG','2163 UC',357000),
('ML01','Hiburan','Game','Mobile Legends','112 Diamond',26000),
('ML02','Hiburan','Game','Mobile Legends','222 Diamond',51000),
('ML03','Hiburan','Game','Mobile Legends','345 Diamond',75000),
('ML04','Hiburan','Game','Mobile Legends','570 Diamond',123000),
('ML05','Hiburan','Game','Mobile Legends','725 Diamond',194000),
('ML06','Hiburan','Game','Mobile Legends','1345 Diamond',272000),
('ML07','Hiburan','Game','Mobile Legends','2165 Diamond',460000),
('ML08','Hiburan','Game','Mobile Legends','3500 Diamond',765000),
('FF01','Hiburan','Game','Free Fire','50 Diamond',6960),
('FF02','Hiburan','Game','Free Fire','70 Diamond',9570),
('FF03','Hiburan','Game','Free Fire','100 Diamond',13920),
('FF04','Hiburan','Game','Free Fire','140 Diamond',19140),
('FF05','Hiburan','Game','Free Fire','210 Diamond',28710),
('FF06','Hiburan','Game','Free Fire','355 Diamond',47850),
('FF07','Hiburan','Game','Free Fire','720 Diamond',95700),
('FF08','Hiburan','Game','Free Fire','1075 Diamond',143550),
('AOV01','Hiburan','Game','Arena of Valor','40 Voucher',8500),
('AOV02','Hiburan','Game','Arena of Valor','90 Voucher',16000),
('AOV03','Hiburan','Game','Arena of Valor','230 Voucher',38000),
('AOV04','Hiburan','Game','Arena of Valor','370 Voucher',60000),
('AOV05','Hiburan','Game','Arena of Valor','470 Voucher',74000),
('AOV06','Hiburan','Game','Arena of Valor','560 Voucher',88000),
('AOV07','Hiburan','Game','Arena of Valor','700 Voucher',110000),
('AOV08','Hiburan','Game','Arena of Valor','999 Voucher',147000),
('Steam01','Hiburan','Game','Steam','IDR 8.000',9000),
('Steam02','Hiburan','Game','Steam','IDR 12.000',13500),
('Steam03','Hiburan','Game','Steam','IDR 45.000',50500),
('Steam04','Hiburan','Game','Steam','IDR 60.000',68800),
('Steam05','Hiburan','Game','Steam','IDR 90.000',100000),
('Steam06','Hiburan','Game','Steam','IDR 120.000',134500),
('Steam07','Hiburan','Game','Steam','IDR 250.000',280000),
('Steam08','Hiburan','Game','Steam','IDR 400.000',465000)

-- Record Streaming
INSERT INTO produk VALUES
('Netflix01','Hiburan','Streaming','Netflix','7 Hari',17900),
('Netflix02','Hiburan','Streaming','Netflix','30 Hari',37900),
('Netflix03','Hiburan','Streaming','Netflix','90 Hari',113700),
('Netflix04','Hiburan','Streaming','Netflix','1 Tahun Lifetime',454800),
('iFlix01','Hiburan','Streaming','iFlix','7 Hari',5000),
('iFlix02','Hiburan','Streaming','iFlix','30 Hari',15000),
('iFlix03','Hiburan','Streaming','iFlix','90 Hari',40000),
('iFlix04','Hiburan','Streaming','iFlix','1 Tahun Lifetime',160000),
('Vidio01','Hiburan','Streaming','Vidio','7 Hari',19000),
('Vidio02','Hiburan','Streaming','Vidio','30 Hari',29000),
('Vidio03','Hiburan','Streaming','Vidio','90 Hari',89000),
('Vidio04','Hiburan','Streaming','Vidio','1 Tahun Lifetime',199000),
('Viu01','Hiburan','Streaming','Viu','7 Hari',10000),
('Viu02','Hiburan','Streaming','Viu','30 Hari',30000),
('Viu03','Hiburan','Streaming','Viu','90 Hari',75000),
('Viu04','Hiburan','Streaming','Viu','1 Tahun Lifetime',200000),
('MaxStream01','Hiburan','Streaming','MaxStream','7 Hari',15000),
('MaxStream02','Hiburan','Streaming','MaxStream','30 Hari',25000),
('MaxStream03','Hiburan','Streaming','MaxStream','90 Hari',69000),
('MaxStream04','Hiburan','Streaming','MaxStream','1 Tahun Lifetime',280000)

-- Record Voucher Belanja
INSERT INTO produk VALUES
('Indo01','Hiburan','Voucher','Indomaret','Rp5.000',7000),
('Indo02','Hiburan','Voucher','Indomaret','Rp10.000',12000),
('Indo03','Hiburan','Voucher','Indomaret','Rp20.000',22000),
('Indo04','Hiburan','Voucher','Indomaret','Rp50.000',52000),
('Indo05','Hiburan','Voucher','Indomaret','Rp100.000',102000),
('Indo06','Hiburan','Voucher','Indomaret','Rp150.000',152000),
('Indo07','Hiburan','Voucher','Indomaret','Rp300.000',302000),
('Indo08','Hiburan','Voucher','Indomaret','Rp500.000',502000),
('Alfa01','Hiburan','Voucher','Alfamart','Rp5.000',7000),
('Alfa02','Hiburan','Voucher','Alfamart','Rp10.000',12000),
('Alfa03','Hiburan','Voucher','Alfamart','Rp20.000',22000),
('Alfa04','Hiburan','Voucher','Alfamart','Rp50.000',52000),
('Alfa05','Hiburan','Voucher','Alfamart','Rp100.000',102000),
('Alfa06','Hiburan','Voucher','Alfamart','Rp150.000',152000),
('Alfa07','Hiburan','Voucher','Alfamart','Rp300.000',302000),
('Alfa08','Hiburan','Voucher','Alfamart','Rp500.000',502000),
('OYO01','Hiburan','Voucher','OYO','Rp5.000',7000),
('OYO02','Hiburan','Voucher','OYO','Rp10.000',12000),
('OYO03','Hiburan','Voucher','OYO','Rp20.000',22000),
('OYO04','Hiburan','Voucher','OYO','Rp50.000',52000),
('OYO05','Hiburan','Voucher','OYO','Rp100.000',102000),
('OYO06','Hiburan','Voucher','OYO','Rp150.000',152000),
('OYO07','Hiburan','Voucher','OYO','Rp300.000',302000),
('OYO08','Hiburan','Voucher','OYO','Rp500.000',502000),
('RD01','Hiburan','Voucher','RedDoorz','Rp5.000',7000),
('RD02','Hiburan','Voucher','RedDoorz','Rp10.000',12000),
('RD03','Hiburan','Voucher','RedDoorz','Rp20.000',22000),
('RD04','Hiburan','Voucher','RedDoorz','Rp50.000',52000),
('RD05','Hiburan','Voucher','RedDoorz','Rp100.000',102000),
('RD06','Hiburan','Voucher','RedDoorz','Rp150.000',152000),
('RD07','Hiburan','Voucher','RedDoorz','Rp300.000',302000),
('RD08','Hiburan','Voucher','RedDoorz','Rp500.000',502000),
('CRF01','Hiburan','Voucher','Carrefour','Rp5.000',7000),
('CRF02','Hiburan','Voucher','Carrefour','Rp10.000',12000),
('CRF03','Hiburan','Voucher','Carrefour','Rp20.000',22000),
('CRF04','Hiburan','Voucher','Carrefour','Rp50.000',52000),
('CRF05','Hiburan','Voucher','Carrefour','Rp100.000',102000),
('CRF06','Hiburan','Voucher','Carrefour','Rp150.000',152000),
('CRF07','Hiburan','Voucher','Carrefour','Rp300.000',302000),
('CRF08','Hiburan','Voucher','Carrefour','Rp500.000',502000),
('GMD01','Hiburan','Voucher','Gramedia','Rp5.000',7000),
('GMD02','Hiburan','Voucher','Gramedia','Rp10.000',12000),
('GMD03','Hiburan','Voucher','Gramedia','Rp20.000',22000),
('GMD04','Hiburan','Voucher','Gramedia','Rp50.000',52000),
('GMD05','Hiburan','Voucher','Gramedia','Rp100.000',102000),
('GMD06','Hiburan','Voucher','Gramedia','Rp150.000',152000),
('GMD07','Hiburan','Voucher','Gramedia','Rp300.000',302000),
('GMD08','Hiburan','Voucher','Gramedia','Rp500.000',502000),
('K2401','Hiburan','Voucher','K24 Klik','Rp5.000',7000),
('K2402','Hiburan','Voucher','K24 Klik','Rp10.000',12000),
('K2403','Hiburan','Voucher','K24 Klik','Rp20.000',22000),
('K2404','Hiburan','Voucher','K24 Klik','Rp50.000',52000),
('K2405','Hiburan','Voucher','K24 Klik','Rp100.000',102000),
('K2406','Hiburan','Voucher','K24 Klik','Rp150.000',152000),
('K2407','Hiburan','Voucher','K24 Klik','Rp300.000',302000),
('K2408','Hiburan','Voucher','K24 Klik','Rp500.000',502000),
('Tiket01','Hiburan','Voucher','Tiket.com','Rp5.000',7000),
('Tiket02','Hiburan','Voucher','Tiket.com','Rp10.000',12000),
('Tiket03','Hiburan','Voucher','Tiket.com','Rp20.000',22000),
('Tiket04','Hiburan','Voucher','Tiket.com','Rp50.000',52000),
('Tiket05','Hiburan','Voucher','Tiket.com','Rp100.000',102000),
('Tiket06','Hiburan','Voucher','Tiket.com','Rp150.000',152000),
('Tiket07','Hiburan','Voucher','Tiket.com','Rp300.000',302000),
('Tiket08','Hiburan','Voucher','Tiket.com','Rp500.000',502000)

-- Record Tagihan Kartu Perdana
INSERT INTO tagihan VALUES
('1001','Tagihan','Kartu Perdana',11111111,'Muhammad Zahran','Yogyakarta','Januari',100000)

-- Record Tagihan PLN
INSERT INTO tagihan VALUES
('2001','Tagihan','PLN',22222222,'Rilo Prasetyo','Sleman','Februari',200000)

-- Record Tagihan PDAM
INSERT INTO tagihan VALUES
('3001','Tagihan','PDAM',33333333,'Faisal Chan','Surabaya','Maret',300000)

-- Record Tagihan Internet
INSERT INTO tagihan VALUES
('4001','Tagihan','Internet',44444444,'Rifky Budi','Yogyakarta','April',400000)

-- Record Nomor Pembeli [ Test Numeric ]
INSERT INTO pembeli(nomor_pembeli) VALUES
('088888888888')

-- DML TEST

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'pembeli'

SELECT * FROM produk

SELECT * FROM tagihan

SELECT * FROM pembeli