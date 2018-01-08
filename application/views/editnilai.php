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
                  <h4 class="page-title">Ubah Nilai </h4>
                  <ol class="breadcrumb p-0 m-0">
                     <li>
                        <a href="<?php echo base_url();?>pilih">Beranda</a>
                     </li>
                     <li class="active">
                        Ubah Nilai
                     </li>
                  </ol>
                  <div class="clearfix"></div>
               </div>
            </div>
         </div>
         <!-- end row -->
         <div class="row">
            <div class="col-sm-12">
               <div class="card-box table-responsive">
                  <div class="m-t-0 header-title">
                     <form id="pilih">
					 <input type="hidden" name="cek" value="1">
                        <div class="col-md-6">
                           <select class="form-control select2" name="karyawan" onchange="tgl(this.value)">
                              <option style="display:none">Select</option>
                              <optgroup label="Karyawan">
                                 <?php foreach ($karyawan as $key) { ?>
                                 <option value="<?php echo $key->id_karyawan;?>"><?php echo $key->nama." ~ ".$key->divisi;?></option>
                                 <?php } ?>
                              </optgroup>
                           </select>
                        </div>
                        <div class="col-md-6">
                           <select class="form-control select2" name="bulan" onchange="tgl(this.value)">
                              <option style="display:none">Select</option>
                              <optgroup label="Waktu">
                                 <?php date_default_timezone_set('Asia/Jakarta');
                                    $tgl = date("Y-m-d");
                                    $kurang = date ("Y-m-d", strtotime("-1 month", strtotime($tgl)));
                                    $satu = date ("Y-m-d", strtotime("+1 month", strtotime($tgl)));
                                    $dua = date ("Y-m-d", strtotime("+2 month", strtotime($tgl))); ?>
                                 <option value="<?php echo $kurang ;?>"><?php echo date('F Y', strtotime($kurang )) ;?></option>
                                 <option selected value="<?php echo $tgl;?>"><?php echo date('F Y', strtotime($tgl )) ;?></option>
                                 <option value="<?php echo $satu;?>"><?php echo date('F Y', strtotime($satu )) ;?></option>
                              </optgroup>
                           </select>
                        </div>
                     </form>
                  </div>
                  <br/><br><br>
                  <div class="demo-box" id="isi">
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- container -->
   </div>
   <!-- content -->
   <footer class="footer text-right">
      <?php echo date("Y");?> © Karunia Travel.
   </footer>
</div>
<!-- ============================================================== -->
<!-- End Right content here -->
<!-- ============================================================== -->
<script>
	function pencet(id) {
   	swal({
                   title: "Memberi Nilai?",
                   text: "Anda akan memberi nilai",
                   type: "warning",
                   showCancelButton: true,
                   confirmButtonClass: 'btn-danger waves-effect waves-light',
                   confirmButtonText: "Ya",
                   closeOnConfirm: false
               }, function () {
   				$.ajax({
                 url : "<?php echo base_url();?>addnilai/"+id,
                 type: "POST",
   			  data : $("#nilai").serialize(),
                 success: function(data)
                 {
                    tgl();
                 },
                 error: function (jqXHR, textStatus, errorThrown)
                 {
                     alert('Error');
                 }
   			  });
                   swal("Sukses!", "", "success");
               });
   }
	
   function tgl() {
   	$.ajax({
                 url : "<?php echo base_url();?>modalnilai",
                 type: "POST",
                 data: $('#pilih').serialize(),
   
                 success: function(data)
                 {
                    $("#isi").html(data);
                 },
                 error: function (jqXHR, textStatus, errorThrown)
                 {
                     alert('Error');
                 }
             });
   }
   
</script>