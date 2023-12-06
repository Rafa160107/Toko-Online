
<?php
include "koneksi.php";
if($_GET['id']){
    $id_pembelian_produk = $_GET['id'];
    mysqli_query($conn, "insert into status_beli(id_pembelian_produk, tanggal_pembelian) value ('".$id_pembelian_produk."', '".date('Y-m-d')."')");
    header('location: history.php');
}
?>