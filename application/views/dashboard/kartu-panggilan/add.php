<!doctype html>
<html class="no-js" lang="">
<?php $this->load->view('include/header');?>
<body>
	<div class="container-fluid">
		<?php $this->load->view('dashboard/include/nav');?>
		<div class="row  main-container">
			<?php $this->load->view('dashboard/include/sidebar');?>
						<div class="col-md-9">
							<?php $this->load->view('dashboard/include/alert');?>
							<nav class="breadcrumb">
							  <a class="breadcrumb-item" href="<?php echo site_url('dashboard');?>"><span class="glyphicon glyphicon-home"></span> Beranda</a> > 
							    <a class="breadcrumb-item" href="<?php echo site_url('KartuPanggilan/');?>"><span class="glyphicon glyphicon-bullhorn"></span> Kartu Panggilan</a> > 
							  <span class="breadcrumb-item active"><span class="glyphicon glyphicon-plus"></span> Tambah</span>
							</nav>
							 <div class="panel panel-primary">
						      <div class="panel-heading">Formulir Baru Kartu Status Konseling</div>
						      <div class="panel-body">
						      		<form class="form-horizontal" enctype="multipart/form-data" method="post" action="<?php echo base_url('/save') ;?>">
										<div class="row">
											<div class="col-md-7">
											<div class="form-group">
												<label for="input" class="col-sm-3 control-label text-danger">NIS</label>
												<div class="col-sm-9">
												<div class="input-group">
												  <input type="text" name="nis" class="form-control" id="nis" placeholder="Masukan NIS..">
												    <span class="input-group-btn">
											        <button class="btn btn-primary" type="button" id="search">Cari </button>
											      </span>
												</div>
												</div>
											</div>
											<div class="form-group">
												<label for="input" class="col-sm-3 control-label">Nama Siswa</label>
												<div class="col-sm-9">
													<input type="text" enable name="nama" class="form-control" id="nama" placeholder="Masukan Nama siswa..">
												</div>
											</div>
											<div class="form-group">
												<label for="input" class="col-sm-3 control-label">Kelas</label>
												<div class="col-sm-9">
													<input type="text"  disabled name="kelas" class="form-control" id="kelas" placeholder="Masukan kelas..">
												</div>
											</div>
											<div class="form-group">
											<label for="input" class="col-sm-3 control-label">Tempat Lahir</label>
											<div class="col-sm-9">
											<input type="text" name="tempat_lahir" class="form-control" id="tempat_lahir" placeholder="Tempat Lahir..">
												</div>
												</div>
												<div class="form-group">
												<label for="input" class="col-sm-3 control-label">Tanggal Lahir</label>
												<div class="col-sm-9">
													<input type="date" name="tanggal_lahir" class="form-control" id="tanggal_lahir" placeholder="Tanggal Lahir..">
												</div>
												</div>
											<div class="form-group">
										<label for="input" class="col-sm-3 control-label">Agama</label>
										<div class="col-sm-9">
											<select name="agama" class="form-control">
												<option class="form-control">[ Pilih salah satu ]</option>
												<option value="1">Islam</option>
												<option value="2">Katolik</option>
												<option value="3">Protestan</option>
												<option value="4">Hindu</option>
												<option value="5">Budha</option>
												<option value="6">Konghuchu</option>
											</select>
										</div>
									</div>
											<div class="form-group">
											<label for="input" class="col-sm-3 control-label">Anak ke</label>
											<div class="col-sm-9">
											<input type="text" name="anak_ke" class="form-control" id="anak_ke" placeholder="Masukan Anak ke..">
												</div>
												</div>
												<div class="form-group">
										<label for="input" class="col-sm-3 control-label">Jumlah Saudara</label>
										<div class="col-sm-9">
											<input type="text" name="jumlah_saudara" class="form-control" id="input" placeholder="Masukan Jumlah saudara..">
										</div>
									</div>
												<div class="form-group">
												<label for="input" class="col-sm-3 control-label">Tanggal </label>
												<div class="col-sm-9">
													<input type="date" name="date" class="form-control" id="input" placeholder="Tanggal ..">
												</div>
												</div>
										<div class="form-group">
											<label for="input" class="col-sm-3 control-label">Alamat Orangtua</label>
											<div class="col-sm-9">
											<input type="text" name="alamat_rumah" class="form-control" id="alamat_rumah" placeholder="Alamat..">
												</div>
												</div>
											<div class="form-group">
											<label for="input" class="col-sm-3 control-label">Telepon</label>
											<div class="col-sm-9">
											<input type="text" name="telepon" class="form-control" id="telp_rumah" placeholder="nomor telpon..">
												</div>
											</div>
											<div class="form-group">
											<label for="input" class="col-sm-3 control-label">Masalah Siswa</label>
											<div class="col-sm-9">
											<textarea style="text-align:justify" placeholder="Masalah Siswa.." name="masalah_siswa" class="text-left control-label form-control" rows="5" cols="30"></textarea>
											</div>
											</div>
											<div class="form-group">
											<label for="input" class="col-sm-3 control-label">Penanganan</label>
											<div class="col-sm-9">
											<textarea style="text-align:justify" placeholder="Penanganan.." name="penanganan" class="text-left control-label form-control" rows="5" cols="30"></textarea>
											</div>
											</div>
											<div class="form-group">
											<label for="input" class="col-sm-3 control-label">Tanda Tangan</label>
											<div class="col-sm-9">
											<textarea style="text-align:justify" placeholder="Tanda Tangan.." name="tanda_tangan" class="text-left control-label form-control" rows="2" cols="30"></textarea>
											</div>
											</div>
											<input id="id_student" type="hidden" value="" name="id_student">
											<div class="form-group">
													<div class="col-sm-6 pull-right">
														<input type="submit"  class="form-control btn btn-block btn-primary" id="input" value="simpan">
													</div>
												</div>

												</div>
												
									</form>
						      </div>
						    </div>
						</div>
					</div>
				</div>
<?php $this->load->view('include/footer');?>
	<script type="text/javascript">
		$(document).ready(function(){
			var url="<?php echo site_url();?>";
			$("#search").click(function(e){
				e.preventDefault();
				var nis=$('#nis').val();
				$.getJSON({
				url:url+'visit/getData/'+nis,
				}).done(function(data){

					var result=data[0];
						console.log(result);
					if(result==undefined){
						alert("data siswa tidak ditemukan");
					}else{
						$("#nama").val(result.nama);
						$("#kelas").val(result.kelas);
						$("#alamat").val(result.alamat_rumah);
						$("#nis_view").val(result.nis);
						$("#id_student").val(result.id_student);
						$("#agama").val(result.agama);
						$("#anak_ke").val(result.anak_ke);
						$("#jumlah_saudara").val(result.jumlah_saudara);
						$("#alamat_rumah").val(result.alamat_rumah);
						$("#telp_rumah").val(result.telp_rumah);
							
					}
					
				});

			})
			

		})
	</script>
</body>
</html>