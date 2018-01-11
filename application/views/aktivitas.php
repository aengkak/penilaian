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
                  <h4 class="page-title">Aktivitas </h4>
                  <ol class="breadcrumb p-0 m-0">
                     <li>
                        <a href="#">Beranda</a>
                     </li>
                     <li class="active">
                        Aktivitas
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
                  <h4 class="m-t-0 header-title">
                     <b>
                     </b>
                  </h4>
                  <table id="datatable" class="display table table-striped table-bordered">
                     <thead>
                        <tr>
                           <th>Keterangan</th>
						   <th>Username</th>
						   <th>Waktu</th>
                        </tr>
                     </thead>
                     <tbody>
                     </tbody>
                  </table>
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
<!-- sample modal content -->
<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title" id="myModalLabel">Form</h4>
         </div>
         <form class="form-horizontal" role="form" id="form">
            <div class="modal-body" id="modalbody">
            </div>
            <div class="modal-footer" id="loading">
               <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
               <button type="submit" class="btn btn-primary waves-effect waves-light">Simpan</button>
            </div>
         </form>
      </div>
      <!-- /.modal-content -->
   </div>
   <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<script type = "text/javascript">
	var table;
var simpan;

$(document).ready(function () {
	//datatables
	table = $('#datatable').DataTable({
		//keys: true,
		"processing": true, //Feature control the processing indicator.
		"serverSide": true, //Feature control DataTables' server-side processing mode.
		"order": [], //Initial no order.
		// Load data for the table's content from an Ajax source
		"ajax": {
			"url": '<?php echo base_url('jsonaktivitas '); ?>',
			"type": "POST"
		},
		//Set column definition initialisation properties.
		"columns": [{
				"data": "ket"
			},
			{
				"data": "username"
			},
			{
				"data": "tgl"
			}
		],

	});
	//TableManageButtons.init();
});


</script> 
<script>
	var myVar;
$(window).on('load', function () {
	myVar = setInterval(alertFunc, 15 * 60 * 1000);
});

function alertFunc() {
	$.ajax({
		type: "POST",
		url: "<?php echo base_url('checkses')?>",
		success: function (data) {
			if (data == 1) {

			} else {
				alert("Sesi Masuk Habis");
				window.location.href = "<?php echo base_url();?>";
			}
		}
	});
} 
</script>