CREATE DATABASE ppob_rev

USE ppob_rev

CREATE TABLE akun
(
usrname varchar(32) PRIMARY KEY,
passwd varchar(32) NOT NULL,
nama_depan varchar(32),
nama_belakang varchar(32),
email_akun varchar(64),
no_telp int
)

CREATE TABLE produk
(
id_produk varchar(16) PRIMARY KEY,
kategori_produk varchar(32) CHECK (kategori_produk IN ('Isi Ulang','Tagihan','Hiburan')) NOT NULL,
jenis_produk varchar(32) CHECK (jenis_produk IN ('Pulsa','Paket Data','E-Wallet','Listrik PLN','Game','Streaming','Voucher')) NOT NULL,
nama_produk varchar(32) NOT NULL,
nominal varchar(16) NOT NULL,
harga int NOT NULL
)

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

CREATE TABLE pembeli
(
id_pembeli int IDENTITY(1,1) PRIMARY KEY,
userid_pembeli varchar(32),
email varchar(64)
)

CREATE TABLE transaksi
(
id_transaksi int IDENTITY(1,1) PRIMARY KEY,
id_produk varchar(16) FOREIGN KEY REFERENCES produk(id_produk),
id_tagihan varchar(16) FOREIGN KEY REFERENCES tagihan(id_tagihan),
id_pembeli int FOREIGN KEY REFERENCES pembeli(id_pembeli)
)

CREATE TABLE pembayaran
(
id_pembayaran int IDENTITY(1,1) PRIMARY KEY,
id_transaksi int FOREIGN KEY REFERENCES transaksi(id_transaksi),
total_bayar int
)