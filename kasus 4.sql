-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir.

SELECT id_transaksi, SUM(bayar) AS total_bayar
FROM transaksi
WHERE tanggal_transaksi >= '2023-05-02 14:45:00' AND tanggal_transaksi <= '2023-30-02 14:45:00'
GROUP BY id_transaksi;

SELECT AVG(total_bayar) AS Ratarata_transaksi
FROM(
SELECT id_transaksi, SUM(bayar) AS total_bayar
FROM transaksi
WHERE tanggal_transaksi >= '2023-05-02 14:45:00' AND tanggal_transaksi <= '2023-30-02 14:45:00'
GROUP BY id_transaksi
) AS transaksi_customer;