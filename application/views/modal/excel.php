<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");

// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=".$karyawan->nama.".xls");
?>
<table border="1">
	<tr>
		<th>Tanggal</th>
		<th>Kesalahan</th>
		<th>Keterangan</th>
	</tr>
  <?php foreach ($nilai as $key) { ?>
  <tr>
    <td><?php echo $key->tgl;?></td>
    <td><?php echo $key->sub;?></td>
	<td><?php echo $key->ket;?></td>
  </tr>
<?php } ?>
</table>