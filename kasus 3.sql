-- Melihat Kategori barang yang paling banyak barangnya
SELECT id_kategori, COUNT(*) AS jumlah_barang
FROM barang
GROUP BY id_kategori
ORDER BY jumlah_barang DESC 
LIMIT 1