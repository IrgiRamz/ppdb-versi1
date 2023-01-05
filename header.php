<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>Selamat Datang - PPDB Online SMAN 1 KLAPANUNGGAL</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="ppdb online sman 1 klapanunggal">
  <meta name="author" content="rumahangkasa.com">

	<link href="assets/css/bootstrap.css" rel="stylesheet">
	<link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/css/datepicker.css" rel="stylesheet">

  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/img/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/img/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/img/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="assets/img/apple-touch-icon-57-precomposed.png">
  <link rel="shortcut icon" href="assets/img/favicon.png">
</head>

<body style="">
<div class="container">
	<div class="row clearfix">
		
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header" style="padding-left:25px;">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">MENU</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
					 <a class="navbar-brand" href="https://sman1klapanunggal.sch.id/"><img src="assets/img/logosma.png" alt="" width="21"></a>
				</div>

				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li>
							<a href="index.php">Beranda</a>
						</li>
						<li>
							<a href="alur.php">Alur</a>
						</li>
						<li>
							<a href="jadwal.php">Jadwal</a>
						</li>
						<li>
							<a href="persyaratan.php">Persyaratan</a>
						</li>
						<li>
						  <a href="register.php">Pendaftaran</a>
						</li>
            <li>
						  <a href="biaya_masuk.php">Informasi Biaya Masuk</a>
						</li>
						<li></li>
						<li></li>
					</ul>
          <?php if(!isset($_SESSION['username'])){ ?>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="#faq">FAQ</a>
						</li>
						<li style="padding-right:30px; padding-top: 7px"> <button type="button" class="btn btn-secondary"><a href="login.php">Login</a></button></li>
          </ul>
        <?php } else { ?>
          <ul class="nav navbar-nav navbar-right">
						<li>
							<a href="#"><?php echo $_SESSION['nama']; ?></a>
						</li>
						<li style="padding-right:30px"> <a href="logout.php">Logout</a></li>
          </ul>
        <?php } ?>
				</div>
			</nav>
