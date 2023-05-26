-- Mengubah data pada tabel Produk
UPDATE Produk
SET Harga = 1500000, Stok = 10
WHERE IdProduk = 1;

-- Mengubah data pada tabel Customer
UPDATE Customer
SET Alamat = 'Jl. Duren 49', NoTelepon = '081234567890'
WHERE IdCustomer = 1;

-- Mengubah data pada tabel pesanan
UPDATE Pesanan
SET TotalHarga = '', NoTelepon = '081234567890'
WHERE IdCustomer = 1;




UPDATE Produk
SET Kategori = 'Aksesoris'
WHERE IdProduk = 1;
UPDATE Produk
SET Kategori = 'Aksesoris'
WHERE IdProduk = 2;
UPDATE Produk
SET Kategori = 'Aksesoris'
WHERE IdProduk = 3;
UPDATE Produk
SET Kategori = 'Aksesoris'
WHERE IdProduk = 4;
UPDATE Produk
SET Kategori = 'Aksesoris'
WHERE IdProduk = 5;
UPDATE Produk
SET Kategori = 'Aksesoris'
WHERE IdProduk = 6;
UPDATE Produk
SET Kategori = 'Aksesoris'
WHERE IdProduk = 7;
UPDATE Produk
SET Kategori = 'Aksesoris'
WHERE IdProduk = 8;
UPDATE Produk
SET Kategori = 'Aksesoris'
WHERE IdProduk = 9;
UPDATE Produk
SET Kategori = 'Aksesoris'
WHERE IdProduk = 10;


