-- Melihat 3 produk yang paling sering dibeli oleh pelanggan

SELECT detail_pesanan.id_barang, barang.nama_barang, COUNT(detail_pesanan.id_barang) AS jumlah_pembelian 
FROM detail_pesanan
JOIN barang ON detail_pesanan.id_barang = barang.id_barang 
WHERE detail_pesanan.id_transaksi IN (
    SELECT id_transaksi
    FROM transaksi
    WHERE id_pesanan  IN (
        SELECT id_pesanan
    FROM pesanan
    WHERE id_customer = 8
    )
)
GROUP BY detail_pesanan.id_barang, barang.nama_barang
ORDER BY jumlah_pembelian DESC 
LIMIT 3