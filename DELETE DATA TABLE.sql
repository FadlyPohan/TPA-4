-- Menghapus data dari tabel Produk
DELETE FROM barang WHERE id_barang = 1;

-- Menghapus data dari tabel Customer
DELETE FROM customer WHERE id_customer = 3;

-- Menghapus data dari tabel Transaksi
DELETE FROM transaksi WHERE id_transaksi = 5;

-- Menghapus data dari tabel Pesanan
DELETE FROM pesanan WHERE id_pesanan = 10;

-- Menghapus data dari tabel DetailPesanan
DELETE FROM detail_pesanan WHERE id_detail = 4;

ALTER TABLE pesanan DROP COLUMN total_harga;

ALTER TABLE transaksi DROP COLUMN bayar;

ALTER TABLE transaksi ADD bayar DECIMAL(19, 2);

