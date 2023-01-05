<?php
include 'header.php';
include 'koneksi.php';

$alur = mysqli_query($connect, "SELECT * FROM alur");
$d = mysqli_fetch_array($alur,MYSQLI_ASSOC);

?>
<div class="row clearfix">
  <div class="col-md-12">
  <div class="col-md-8">
    <h3>Alur Pendaftaran</h3>
    Skema Alur Pendaftaran Peserta Didik Baru Online Di SMAN 1 KLAPANUNGGAL
    <div class="well">
      <img src="alur/<?php echo $d['alur_nama']; ?>" width="700px">
    </div>
  </div>
  <div class="col-md-15 column">
    <div class="well">
      <img src="assets/img/hotlinenew.png" height="77px">
      <h3>
        <ul>
          <li>0813 6058 1402</li>
          <li>0813 7011 3307</li>
        </ul>
      </h3>
    </div>
  </div>
</div>
</div>
<?php include 'footer.php'; ?>
