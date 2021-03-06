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
                  <h4 class="page-title">Karyawan </h4>
                  <ol class="breadcrumb p-0 m-0">
                     <li>
                        <a href="#">Beranda</a>
                     </li>
                     <li class="active">
                        Karyawan
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
                     <button onclick="tambah()" class="btn btn-custom waves-effect waves-light m-b-5">
                     <span class="ion-ios7-plus-empty"></span></button>
                     </b>
                  </h4>
                  <table id="datatable" class="display table table-striped table-bordered">
                     <thead>
                        <tr>
                           <th>Nama</th>
                           <th>Email</th>
                           <th>Divisi</th>
                           <th>Aksi</th>
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
<script type="text/javascript">
var table;var simpan;$(document).ready(function(){table=$('#datatable').DataTable({"processing":!0,"serverSide":!0,"order":[],"ajax":{"url":'<?php echo base_url('jsonkaryawan'); ?>',"type":"POST"},"columns":[{"data":"nama"},{"data":"email"},{"data":"divisi"},{"data":"action"}],})});function tambah(){simpan='tambah';$('#form')[0].reset();$('#myModal').modal({backdrop:'static',keyboard:!1},'show');$("#modalbody").load("<?php echo base_url();?>modalkaryawan/",function(data){$("#modalbody").html(data);$("#masuk").datepicker({showButtonPanel:!0,dateFormat:'yy-mm-dd',})})}
function ganti(id){simpan='update';$('#form')[0].reset();$('#myModal').modal({backdrop:'static',keyboard:!1},'show');$("#modalbody").load("<?php echo base_url();?>editkaryawan/"+id,function(data){$("#modalbody").html(data);$("#masuk").datepicker({showButtonPanel:!0,dateFormat:'yy-mm-dd',})})}
$("#form").on('submit',(function(e){e.preventDefault();var url;if(simpan=='tambah'){url="<?php echo base_url();?>addkaryawan"}else{url="<?php echo base_url();?>updatekaryawan"}
$.ajax({url:url,type:"POST",data:new FormData(this),contentType:!1,cache:!1,processData:!1,success:function(data){$('#myModal').modal('hide');swal("Sukses!","","success")
table.ajax.reload()},error:function(jqXHR,textStatus,errorThrown){swal("Error","","error")}});return!1}));function hapus(id){swal({title:"Yakin Menghapus?",text:"Data akan dihapus",type:"error",showCancelButton:!0,confirmButtonClass:'btn-danger waves-effect waves-light',confirmButtonText:"Ya",closeOnConfirm:!1},function(){$.ajax({url:"<?php echo site_url('deletekaryawan')?>/"+id,type:"POST",dataType:"JSON",success:function(data){table.ajax.reload()},error:function(jqXHR,textStatus,errorThrown){swal("Error","","error")}});swal("Sukses!","","success")})}
</script>