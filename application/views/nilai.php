<!-- ============================================================== -->
<!-- Start right Content here -->
<!-- ============================================================== -->
<div class="content-page">
   <!-- Start content -->
   <div class="content">
      <div class="container">
         <div class="row">
            <div class="col-xs-12">
               <div class="page-title-box">
                  <h4 class="page-title">Hasil</h4>
                  <ol class="breadcrumb p-0 m-0">
                     <li>
                        <a style="cursor: pointer;" onclick="pindah('beranda');">Beranda</a>
                     </li>
					 <li class="active">
						Hasil
					 </li>
                  </ol>
                  <div class="clearfix"></div>
               </div>
            </div>
         </div>
         <!-- end row -->
         <div class="row">
            <div class="card-box">
               <h4 class="header-title m-t-0 m-b-30">Skor Karyawan</h4>
               <div class="table-responsive">
                  <table class="table table table-hover m-0">
                     <thead>
                        <tr>
                           <th></th>
                           <th>Karyawan</th>
                           <th>Bulan Ini</th>
                           <th>Triwulan</th>
                           <th>Semester</th>
                        </tr>
                     </thead>
                     <tbody>
                        <?php $no = 1; foreach ($karyawan as $key) { ?>
                        <tr>
                           <?php $now = 0;
                              foreach ($sekarang as $keys) {
                              	if($keys-> karyawan_id == $key->id_karyawan) {
                              		$now = $now + $keys->jumlah;
                              	} 
                               }
                              
                               if($tigabulan != NULL) {
								   $tri = 0;
								   foreach($tigabulan as $keyt) {
									   if($keyt->karyawan_id == $key->id_karyawan) {
										   $tri = $tri + $keyt->nilai;
									   } else {
										   $tri = $tri + 0;
									   }
								   }
							   } else {
								   $tri = 0;
							   }
                               
							   if($enambulan != NULL) {
								   $sem = 0;
								   foreach ($enambulan as $keysem) {
									 if($keysem-> karyawan_id == $key->id_karyawan) {
										 $sem = $sem + $keysem->nilai;
									 } else {
										 $sem = $sem + 0;
									 }
								   }
							   } else {
								   $sem = 0;
							   }
                               ?>
                           <th>
                              <a style="cursor: pointer;" onclick="rincian(<?php echo $key->id_karyawan;?>);"><span class="avatar-sm-box bg-primary"><?php echo substr($key->nama,0,1);?></span></a>
                           </th>
                           <td>
                              <h5 class="m-0"><a style="cursor: pointer;" onclick="rincian(<?php echo $key->id_karyawan;?>);"><?php echo $key->nama;?></a></h5>
                              <p class="m-0 text-muted font-13"><small><?php echo $key->divisi;?></small></p>
                           </td>
                           <td><?php foreach($rule as $keyrule) {
                              if (100-$now >= $keyrule->dari && 100-$now <= $keyrule->sampai) {
                              	$warna3 = $keyrule->warna;
                              	break;
                              } else {
                              	$warna3 = "green";
                              }
                              } 
                              if($warna3 == "yellow") {
                              $label3 = "label-warning";
                              } elseif($warna3 == "green") {
                              $label3 = "label-success";
                              } elseif($warna3 == "red") {
                              $label3 = "label-danger";
                              } elseif($warna3 == "black") {
                              $label3 = "label-inverse";
                              } else {
                              $label3 = "label-white";
                              } ?>
                              <a style="cursor: pointer;" onclick="masalah('ini.<?php echo $key->id_karyawan;?>');">
								<span class="label <?php echo $label3;?>"><?php echo round(100-$now);?></span>
							  </a>
							</td>
                           <td><?php foreach($rule as $keyrule) {
                              if ($tri/3 >= $keyrule->dari && $tri/3 <= $keyrule->sampai) {
                              	$warna = $keyrule->warna;
                              	break;
                              } else {
                              	$warna = "green";
                              }
                              } 
                              if($warna == "yellow") {
                              $label = "label-warning";
                              } elseif($warna == "green") {
                              $label = "label-success";
                              } elseif($warna == "red") {
                              $label = "label-danger";
                              } elseif($warna == "black") {
                              $label = "label-inverse";
                              } else {
                              $label = "label-white";
                              }
                              ?>
							  <a style="cursor: pointer;" onclick="masalah('tri.<?php echo $key->id_karyawan;?>');">
								<span class="label <?php echo $label;?>"><?php echo round($tri/3);?></span>
							  </a>
                           </td>
                           <td><?php foreach($rule as $keyrule) {
                              if ($sem/6 >= $keyrule->dari && $sem/6 <= $keyrule->sampai) {
                              	$warna1 = $keyrule->warna;
                              	break;
                              } else {
                              	$warna1 = "green";
                              }
                              } 
                              if($warna1 == "yellow") {
                              $label1 = "label-warning";
                              } elseif($warna1 == "green") {
                              $label1 = "label-success";
                              } elseif($warna1 == "red") {
                              $label1 = "label-danger";
                              } elseif($warna1 == "black") {
                              $label1 = "label-inverse";
                              } else {
                              $label1 = "label-white";
                              } ?>
							  <a style="cursor: pointer;" onclick="masalah('sem.<?php echo $key->id_karyawan;?>');">
								<span class="label <?php echo $label1;?>"><?php echo round($sem/6);?></span>
							  </a>
                           </td>
                        </tr>
                        <?php $no++; } ?>
                     </tbody>
                  </table>
               </div>
               <!-- table-responsive -->
            </div>
            <!-- end card -->
         </div>
         <!-- end row -->
      </div>
      <!-- container -->
   </div>
   <!-- content -->
   <footer class="footer text-right">
      <?php echo date("Y");?> © Karunia Travel.
   </footer>
</div>