<?php
session_start();
include "koneksi.php";

if($_POST){
    $qry_get_produk=mysqli_query($conn, "select * from produk where id_produk = '".$_GET['id_produk']."'");
    $dt_produk=mysqli_fetch_array($qry_get_produk);

    $_SESSION['cart'][] = array('id_produk'=>$dt_produk['id_produk'],
    'nama_produk'=>$dt_produk['nama_produk'],
    'deskripsi'=>$dt_produk['deskripsi'],
    'harga'=>$dt_produk['harga'],
    'foto'=>$dt_produk['foto'],
    'qty'=>$_POST['jumlah_beli']
    );
} 
header('location: keranjang.php');
?>