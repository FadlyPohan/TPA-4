
-- Table barang
CREATE TABLE `barang` (
  `id_barang` INT NOT NULL AUTO_INCREMENT,
  `nama_barang` VARCHAR(255) NOT NULL DEFAULT '',
  `harga` DECIMAL(19, 2) NOT NULL,
  `stok` INT(10) NOT NULL,
  `deskripsi` TEXT NOT NULL,
  `id_kategori` INT(100) NOT NULL,
  PRIMARY KEY (`id_barang`),
  CONSTRAINT `kategori` FOREIGN KEY (`id_kategori`) REFERENCES `sql12619798`.`kategori` (`id_kategori`) ON UPDATE CASCADE ON DELETE CASCADE
);
DESC barang;

CREATE TABLE `kategori`(
    `id_kategori` INT NOT NULL AUTO_INCREMENT,
    `nama_kategori` VARCHAR(20) NOT NULL DEFAULT '',
    PRIMARY KEY (`id_kategori`)
)   
DESC kategori;
-- Table customer
CREATE TABLE `customer` (
  `id_customer` INT NOT NULL AUTO_INCREMENT,
 `nama_customer` VARCHAR(255) NOT NULL DEFAULT '',
  `email` VARCHAR(255) NOT NULL DEFAULT '',
  `alamat` VARCHAR(255) NOT NULL DEFAULT '',
  `no_telepon` VARCHAR(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_customer`)
);
DESC customer;



-- Table pesanan
CREATE TABLE `pesanan` (
  `id_pesanan` INT NOT NULL AUTO_INCREMENT,
  `id_customer` INT(100) NOT NULL,
  `tanggal_pesanan` DATE NOT NULL ,
  `total_harga` DECIMAL(19, 2),
  PRIMARY KEY (`id_pesanan`),
    CONSTRAINT `customer` FOREIGN KEY (`id_customer`) REFERENCES `sql12619798`.`customer` (`id_customer`) ON UPDATE CASCADE ON DELETE CASCADE 
);
DESC pesanan;


-- Table transaksi
CREATE TABLE `transaksi` (
  `id_transaksi` INT NOT NULL AUTO_INCREMENT,
 `id_pesanan` INT(100) NOT NULL,
  `metode_pembayaran` VARCHAR(255) NOT NULL DEFAULT'',
  `tanggal_transaksi` DATETIME NOT NULL,
  PRIMARY KEY (`id_transaksi`),
CONSTRAINT `pesanan` FOREIGN KEY (`id_pesanan`) REFERENCES `sql12619798`.`pesanan` (`id_pesanan`) ON UPDATE CASCADE ON DELETE CASCADE 
);
DESC transaksi;

-- Table detail_pesanan
CREATE TABLE `detail_pesanan`(
    `id_detail` INT NOT NULL AUTO_INCREMENT,
    `id_transaksi` INT(11) NOT NULL,
    `id_barang` INT(11) NOT NULL,
    PRIMARY KEY (`id_detail`),
    CONSTRAINT `transaksi` FOREIGN KEY (`id_transaksi`) REFERENCES `sql12619798`.`transaksi` (`id_transaksi`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `barang` FOREIGN KEY (`id_barang`) REFERENCES `sql12619798`.`barang` (`id_barang`) ON UPDATE CASCADE ON DELETE CASCADE 
);  
DESC detail_pesanan;

