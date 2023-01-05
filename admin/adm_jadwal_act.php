<?php
include '../koneksi.php';

$id = $_POST['tgl_id'];
$ta = $_POST['ta'];
$mulai = $_POST['tglbuka'];
$mulai = date('Y-m-d',strtotime($mulai));
$akhir = $_POST['tgltutup'];
$akhir = date('Y-m-d',strtotime($akhir));

// update data ke database
$timedata = "UPDATE waktu SET waktu_mulai='$mulai', waktu_akhir='$akhir', waktu_nama='$ta' WHERE waktu_id='$id'";
mysqli_query($connect, $timedata);

// mengalihkan halaman kembali ke index.php
header("location:adm_jadwal.php");
?>
