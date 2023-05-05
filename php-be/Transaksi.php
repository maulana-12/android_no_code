<?php

include "koneksi.php";

$NoUrut = $_GET['NoUrut'];
$idBarang = $_GET['idBarang'];
$nmBarang = $_GET['nmBarang'];
$harga = $_GET['harga'];
$noTransaksi = $_GET['NoTransaksi'];
$userKasir = $_GET['userKasir'];

$tanggal = date("Y/m/d");
$jumlah = 1;
$total = $jumlah * $harga;

$data = mysqli_query($koneksi, "SELECT * FROM t_tempkasir WHERE idBarang =$idBarang");
if (mysqli_num_rows($data) == 0) {
    $simpan = mysqli_query($koneksi, "INSERT INTO t_tempkasir(No,noTransaksi,tanggal, idBarang, nmBarang,jumlah,harga,total,ID_Kasir) VALUES ('$NoUrut','$noTransaksi','$tanggal','$idBarang','$nmBarang','$jumlah','$harga','$total','$userKasir')");
    if ($simpan) {
        echo "Berhasil Simpan";
    } else {
        echo "Gagal Simpan";
    }
} else {
    echo 'UPDATE';
    while ($hasil = mysqli_fetch_array($data)) {
        $jumlah = $hasil["jumlah"] + 1;
        $total = $jumlah * $harga;
    }
    mysqli_query($koneksi, "UPDATE t_tempkasir SET jumlah=$jumlah,total=$total WHERE idBarang = $idBarang");
}
