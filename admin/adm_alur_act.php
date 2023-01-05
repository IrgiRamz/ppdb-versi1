<?php
include '../koneksi.php';

// if($_POST['upload']){
  $id = $_POST['alur_id'];

	$ekstensi_diperbolehkan	= array('png','jpg');
	$nama = $_FILES['filealur']['name'];
	$x = explode('.', $nama);
	$ekstensi = strtolower(end($x));
	$ukuran	= $_FILES['filealur']['size'];
	$file_tmp = $_FILES['filealur']['tmp_name'];

	if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
		if($ukuran < 1044070){
			move_uploaded_file($file_tmp, '../alur/'.$nama);
			$upsql = "UPDATE alur SET alur_nama = '$nama' WHERE alur_id = '$id'";
			$query = mysqli_query($connect, $upsql);
			if($query){
				echo 'FILE BERHASIL DI UPLOAD';
			}else{
				echo 'GAGAL MENGUPLOAD GAMBAR';
			}
		}else{
			echo 'UKURAN FILE TERLALU BESAR';
		}
	}else{
		echo 'EKSTENSI FILE YANG DI UPLOAD TIDAK DI PERBOLEHKAN';
	}
?>
