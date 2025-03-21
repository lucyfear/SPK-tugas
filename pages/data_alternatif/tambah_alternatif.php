<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-1">
  <h1 class="h3 text-gray-800">Tambah Alternatif</h1>
</div>

<!-- popup status -->
<?php  
    if (isset($_SESSION['pesan']) && isset($_SESSION['status'])) :
?>
    <div class="alert alert-<?= $_SESSION['status']; ?> rounded-0" role="alert" id="notif">
      <?= $_SESSION['pesan']; ?>
    </div>
<?php  
    unset($_SESSION['pesan']);
    unset($_SESSION['status']);
    endif;
?>

<!-- DataTales Example -->
<div class="card mb-4 rounded-0">
    <div class="card-header bg-white py-3 d-flex">
        <h6 class="m-0 text-gray-800">Masukkan Data Alternatif Baru</h6>
    </div>
    <div class="card-body">
        <form action="pages/data_alternatif/proses_tambah_alternatif.php" method="post">
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">NISN</label>
                <input type="text" class="form-control rounded-0" id="exampleFormControlInput1" name="nisn" placeholder="Masukkan NISN" required>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Nama Siswa</label>
                <input type="text" class="form-control rounded-0" id="exampleFormControlInput1" name="nama_siswa" placeholder="Masukkan Nama Siswa"required>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">JK</label>
                <select class="form-control rounded-0" aria-label="Default select example" name="jenis_kelamin" required>
                    <option selected disabled>-- Jenis Kelamin --</option>
                    <option value="L">L</option>
                    <option value="P">P</option>
                </select>
            </div>
            <div class="mb-4">
                <label for="exampleFormControlInput1" class="form-label">Kelas</label>
                <select class="form-control rounded-0" aria-label="Default select example" name="kelas">
                    <option selected disabled>-- Pilih Kelas --</option>
                    <option value="X 1">X 1</option>
                    <option value="X 2">X 2</option>
                    <option value="X 3">X 3</option>
                    <option value="X 4">X 4</option>
                    <option value="X 5">X 5</option>
                    <option value="X 6">X 6</option>
                    <option value="X 7">X 7</option>
                    <option value="X 8">X 8</option>
                    <option value="XI 1">XI 1</option>
                    <option value="XI 2">XI 2</option>
                    <option value="XI 3">XI 3</option>
                    <option value="XI 4">XI 4</option>
                    <option value="XI 5">XI 5</option>
                    <option value="XI 6">XI 6</option>
                    <option value="XI 7">XI 7</option>
                    <option value="XII 1">XII 1</option>
                    <option value="XII 2">XII 2</option>
                    <option value="XII 3">XII 3</option>
                    <option value="XII 4">XII 4</option>
                    <option value="XII 5">XII 5</option>
                    <option value="XII 6">XII 6</option>
                    <option value="XII 7">XII 7</option>
                    <option value="XII 8">XII 8</option>
                </select>
            </div>
            <a href="index.php?page=data_siswa" class="btn btn-secondary btn-square rounded-0">
                <i class="fas fa-chevron-left fa-sm"></i> Kembali
            </a>
            <button type="submit" class="btn btn-success btn-square rounded-0">
                <i class="fas fa-save fa-sm"></i> Simpan
            </button>
        </form>
    </div>
</div>