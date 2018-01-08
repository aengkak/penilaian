<?php date_default_timezone_set('Asia/Jakarta');
$hariini = date("Y-m-d"); ?>
<h4 class="m-t-0 header-title"><b>Daftar Penilaian Karyawan</b></h4>
<form id="nilai">
   <input type="hidden" name="karyawan" value="<?php echo $karyawan->id_karyawan;?>">
   <table class="table table-striped m-0">
      <thead>
         <tr>
            <th>#</th>
            <th>Lancar</th>
            <?php foreach($kategori as $key) { ?>
            <th><?php echo $key->nama;?></th>
            <?php } ?>
         </tr>
      </thead>
      <tbody>
         <?php if($cek == 0) { ?>
         <?php foreach ($bulan as $dd => $value) { ?>
         <tr>
            <th scope="row"><?php echo date('d F Y', strtotime($value )) ;?></th>
            <td>
               <div class="radio radio-primary">
                  <input <?php if(date ("Y-m-d", strtotime("-1 day", strtotime($hariini))) > $value) { echo "disabled"; } ?> name="<?php echo $value; ?>" <?php foreach ($nilai as $keyn) { if ($value == $keyn->tgl && $keyn->sub_id == 0) { echo 'checked = "checked"'; echo 'title="'.$keyn->ket.'"'; } } ?> type="radio" id="<?php echo $value; ?>.ok" value="<?php echo $value.".0"; ?>" onclick="lancar(this.value)">
                  <label for="<?php echo $value; ?>.ok">Ok</label>
               </div>
            </td>
            <?php $absen = 0;
               foreach($kategori as $key) { ?>
            <td>
               <div class="radio radio-primary">
                  <?php 
                     foreach($sub as $keysub) { 
					 if($keysub->kategori_id == $key->id_kategori) {
                     $resd = $keysub->divisi_id;
                     $resd1 = explode(',',$resd); 
                     foreach ($resd1 as $keyd1 => $valued1) { 
                     if($valued1 == $karyawan->divisi_id) { ?>
                  <input value="<?php echo $value.".".$keysub->id_sub.".".$karyawan->id_karyawan;?>" <?php foreach ($nilai as $keyn) { 
                     if ($value == $keyn->tgl && $keyn->sub_id == 0) { 
                     	echo 'disabled'; 
                     } elseif ($value == $keyn->tgl && $keysub->id_sub == $keyn->sub_id) { 
                     		echo 'checked = "checked"';
							echo 'title="'.$keyn->ket.'"';
                     		if(strtolower($keysub->nama) == "absensi") {
                     			if(strtolower($keysub->sub) == "bolos") {
                     				$absen = $absen + 1;
                     			} elseif(strtolower($keysub->sub) == "ijin") {
                     				$absen = $absen + 1;
                     			}
                     		}
                     	} 
                     } if($absen > 0) {
                     	if(strtolower($keysub->nama) != "absensi") {
                     		echo 'disabled';
                     	}
                     } 
                     ?> <?php if(date ("Y-m-d", strtotime("-1 day", strtotime($hariini))) > $value) { echo "disabled"; } ?> type="radio" onclick="pencet(this.value)" id="<?php echo $value.$keysub->id_sub;?>" name="<?php echo $value.$key->nama;?>">
                  <label <?php foreach ($nilai as $keyn) { if ($value == $keyn->tgl && $keysub->id_sub == $keyn->sub_id) { echo 'title="'.$keyn->ket.'"'; } } ?> for="<?php echo $value.$keysub->id_sub;?>"><?php echo $keysub->sub;?></label>
                  <br>
                  <?php } } } } ?>
               </div>
            </td>
            <?php } ?>
         </tr>
         <?php }  ?>
         <?php } else { ?>
         <?php foreach ($bulan as $dd => $value) { ?>
         <tr>
            <th scope="row"><?php echo date('d F Y', strtotime($value )) ;?></th>
            <td>
               <div class="radio radio-primary">
                  <input name="<?php echo $value; ?>" <?php foreach ($nilai as $keyn) { if ($value == $keyn->tgl && $keyn->sub_id == 0) echo 'checked = "checked"'; } ?> type="radio" id="<?php echo $value; ?>.ok" value="<?php echo $value.".0.".$karyawan->id_karyawan; ?>" onclick="pencet(this.value)">
                  <label for="<?php echo $value; ?>.ok">Ok</label>
               </div>
            </td>
            <?php foreach($kategori as $key) { ?>
            <td>
               <div class="radio radio-primary">
                  <?php foreach($sub as $keysub) { 
                     if($keysub->kategori_id == $key->id_kategori) { ?>
                  <input value="<?php echo $value.".".$keysub->id_sub.".".$karyawan->id_karyawan;?>" <?php foreach ($nilai as $keyn) { if ($value == $keyn->tgl && $keysub->id_sub == $keyn->sub_id) { echo 'checked = "checked"'; } } ?> type="radio" onclick="pencet(this.value)" id="<?php echo $value.$keysub->id_sub;?>" name="<?php echo $value.$key->nama;?>">
                  <label for="<?php echo $value.$keysub->id_sub;?>"><?php echo $keysub->sub;?></label>
                  <br>
                  <?php } } ?>
               </div>
            </td>
            <?php } ?>
            <?php if(strtolower($karyawan->divisi) == "sales") { ?> 
            <td></td>
            <?php } ?>
         </tr>
         <?php }  ?>
         <?php } ?>
      </tbody>
   </table>
</form>
