-- Insert Data Produk
INSERT INTO barang (nama_barang, harga, stok, deskripsi,id_kategori)
VALUES
  ('Earphone Sony', 150000, 20, 'Earphone berkualitas dengan suara yang jernih',1),
  ('Mouse Logitech', 100000, 15, 'Mouse optik dengan desain ergonomis',1),
  ('Keyboard Mechanical', 250000, 10, 'Keyboard mekanikal dengan backlight',1),
  ('Powerbank Xiaomi', 200000, 12, 'Powerbank 10000mAh dengan fitur fast charging',1),
  ('Kabel Data USB', 50000, 30, 'Kabel data USB tahan lama',1),
  ('Lensa Kamera', 300000, 8, 'Lensa kamera wide angle untuk smartphone',1),
  ('Mousepad Gaming', 80000, 25, 'Mousepad gaming anti-slip dengan desain menarik',1),
  ('Headset Bluetooth', 180000, 18, 'Headset bluetooth dengan noise cancellation',1),
  ('Tripod Kamera', 150000, 10, 'Tripod kamera ringan dan mudah digunakan',1),
  ('Charger Mobil USB', 120000, 15, 'Charger mobil dengan port USB ganda',1);

-- Insert Data Customer
INSERT INTO customer (nama_customer, email, alamat, no_telepon) VALUES
( 'Fadly', 'fadly@gmail.com', 'jl.bahagia', 0823291390),
( 'Fauzan', 'fauzan@gmail.com', 'jl.ceria', 082123132),
( 'Fikri', 'fikri@gmail.com', 'jl.neraka', 08211039),
('Firza', 'firza@gmail.com', 'jl.meriah', 083291013 ),
( 'Rahmad', 'rahmad@gmail.com', 'jl.sengsara', 085639201 ),
( 'Ikhsan', 'ikhsan@gmail.com', 'jl.menderita', 083738219 ),
( 'Andri', 'andri@gmail.com', 'jl.indah', 081291932 ),
( 'Andra', 'andra@gmail.com', 'jl.taqwa', 084200931),
( 'Agus', 'agus@gmail.com', 'jl.nikmat', 08339281),
( 'Ziad', 'ziad@gmail.com', 'jl.jurang', 082873871)

SELECT * FROM customer

-- Insert Data Pesanan
INSERT INTO pesanan (id_customer,tanggal_pesanan) VALUES
(10, '2023-04-12' ),
(1, '2023-02-24'),
(2, '2023-03-30' ),
(4, '2023-05-11' ),
(6, '2023-06-08'),
(8, '2023-04-25' ),
(5, '2023-03-31' ),
(3, '2023-01-21' ),
(9, '2023-05-13' ),
(7, '2023-04-10');

SELECT * FROM pesanan

-- Insert Data Transaksi
INSERT INTO transaksi (id_pesanan, metode_pembayaran, tanggal_transaksi, bayar)
VALUES
  (10, 'Transfer Bank', '2023-05-01 09:30:00', 600000),
  (2, 'Kartu Kredit', '2023-05-02 14:45:00', 550000 ),
  (6, 'Transfer Bank', '2023-05-03 11:20:00', 700000),
  (9, 'Kartu Debit', '2023-05-04 16:10:00', 800000),
  (5, 'Transfer Bank', '2023-05-05 13:25:00', 120000 ),
  (1, 'Kartu Kredit', '2023-05-06 10:50:00', 430000),
  (7, 'Transfer Bank', '2023-05-07 15:15:00', 150000),
  (9, 'Kartu Debit', '2023-05-08 12:40:00', 980000),
  (8, 'Transfer Bank', '2023-05-09 09:55:00', 750000),
  (3, 'Kartu Kredit', '2023-05-10 14:30:00', 150000 );

SELECT * FROM transaksi

-- Insert Data DetailPesanan
INSERT INTO detail_pesanan (id_transaksi, id_barang) VALUES
(19,7),
(18,1),
(16,8),
(15,3),
(20,2),
(13,4),
(11,5),
(17,6),
(14,10),
(12,9);


INSERT INTO kategori (nama_kategori) VALUES
('aksesoris'),
('elektronik'),
('makanan dan minuman'),
('kecantikan'),
('kesehatan'),
('olahraga'),
('alat tulis kantor'),
('rumah tangga'),
('kendaraan'),
('mainan');
