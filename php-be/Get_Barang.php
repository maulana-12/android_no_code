<?php

include "koneksi.php";
$ID = $_GET['ID'];
// $idBarang= $_GET['idBarang'];

date_default_timezone_set("Asia/Bangkok");

/*
if ($ID == 1) {
    $data = mysqli_query($koneksi, "SELECT * FROM t_barang WHERE idBarang=$idBarang");

    while ($result = mysqli_fetch_array($data)) {
        echo $result["nmBarang"];
        echo "|";
        echo $result["hargaJual"];
        echo "|";
        echo $result["stok"];

        mysqli_query($koneksi, "UPDATE t_barang SET stok=stok-1 WHERE idBarang=$ID");
    }
} elseif ($ID == 2) {
    $dataKasir = mysqli_query($koneksi, "SELECT * FROM t_tempkasir WHERE No=$idBarang");

    while ($result = mysqli_fetch_array($data)) {
        echo $result["nmBarang"];
        echo "|";
        echo $result["jumlah"];
        echo "|";
        echo $result["harga"];
    }
} elseif ($ID == 3) {
    $data = mysqli_query($koneksi, "SELECT * FROM t_barang WHERE No=$idBarang");

    while ($result = mysqli_fetch_array($data)) {
        echo $result["idBarang"];
        echo "|";
        echo $result["nmBarang"];
        echo "|";
        echo $result["hargaJual"];
    }
}
*/

if (strlen($ID) >= 4) {
    $data = mysqli_query($koneksi, "SELECT * FROM t_barang WHERE idBarang=$ID");

    while ($result = mysqli_fetch_array($data)) {
        echo $result["nmBarang"];
        echo "|";
        echo $result["hargaJual"];
        echo "|";
        echo $result["stok"];

        mysqli_query($koneksi, "UPDATE t_barang SET stok=stok-1 WHERE idBarang=$ID");
    }
} else {
    $dataKasir = mysqli_query($koneksi, "SELECT * FROM t_tempkasir WHERE No=$ID");

    while ($result2 = mysqli_fetch_array($dataKasir)) {
        echo $result2["nmBarang"];
        echo "|";
        echo $result2["jumlah"];
        echo "|";
        echo $result2["harga"];
    }
}
