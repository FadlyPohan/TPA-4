-- 1 pelanggan membeli 3 barang yang berbeda.
SELECT COUNT(DISTINCT id_barang) AS jumlah_barang
FROM detail_pesanan
WHERE id_transaksi IN (
    SELECT id_transaksi
    FROM transaksi
    WHERE id_pesanan IN(
        SELECT id_pesanan
        FROM pesanan
        WHERE id_customer = 10
    )
)
