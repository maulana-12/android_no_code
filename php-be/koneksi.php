<?php
    $koneksi = mysqli_connect("localhost","root","","kasir");

    if (!$koneksi) {
        die("Koneksi gagal:".mysqli_connect_error());
    }

    // echo "koneksi berhasil";
    // mysqli_close($koneksi);
