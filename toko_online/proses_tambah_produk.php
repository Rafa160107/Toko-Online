<?php
include('koneksi.php');
session_start();

$nama_produk = $_POST['nama_produk'];
$tanggal = $_POST['tanggal_release'];
$developer = $_POST['developer'];
$deskripsi = $_POST['deskripsi'];
$foto = $_POST['foto'];
$harga = $_POST['harga'];
$publisher = $_POST['publisher'];

if(empty($nama_produk)){
    echo "<script> alert ('Nama produk tidak boleh kosong'); location.href='tambah_produk.php';</script>";
} elseif(empty($tanggal)){
    echo "<script> alert ('Tanggal release tidak boleh kosong'); location.href='tambah_produk.php';</script>";
} elseif(empty($developer)){
    echo "<script> alert('Developer tidak boleh kosong'); location.href='tambah_produk.php';</script>";
} elseif(empty($deskripsi)){
    echo "<script> alert('Deskripsi tidak boleh kosong'); location.href='tambah_produk.php';</script>";
} elseif(empty($foto)){
    echo "<script> alert('Foto tidak boleh kosong'); location.href='tambah_produk.php';</script>";
} elseif(empty($harga)){
    echo "<script> alert('Harga tidak boleh kosong'); location.href='tambah_produk.php';</script>";
} elseif(empty($publisher)){
    echo "<script> alert('Publisher tidak boleh kosong'); location.href='tambah_produk.php';</script>";
} else {
    $insert = mysqli_query($conn, "insert into produk(nama_produk, tanggal_release, developer, deskripsi, foto, harga, publisher) value
    ('".$nama_produk."', '".$tanggal."', '".$developer."', '".$deskripsi."', '".$foto."', '".$harga."', '".$publisher."')") or die(mysqli_error($conn));
    if($insert){
        $_SESSION['token_ubah'] = array();
        echo "<script> alert ('Sukses menambahkan'); location.href='tampil_produk.php';</script>";
        header('login.php');
        exit();
    } else {
        $_SESSION['token_ubah'] = array();
        echo "<script> alert ('Sukses menambahkan'); location.href='tampil_produk.php';</script>";
        header('login.php');
        exit();
    }
}

?>