<?php
include "konek.php";

$auth = $_GET['auth'];
$perintah = $_GET['perintah'];
$kd_siswabaru = $_GET['kd_siswabaru'];
$nm_siswa = $_GET['nm_siswa'];
$tmpLahir = $_GET['tmpLahir'];
$jk = $_GET['jk'];
$no_tlp = $_GET['no_tlp'];
$anak_ke = $_GET['anak_ke'];
$jmlh_sdr = $_GET['jmlh_sdr'];
$almt = $_GET['almt'];
$no_kk = $_GET['no_kk'];
$NIK = $_GET['NIK'];
$NIS_siswa = $_GET['NIS_siswa'];
$NISN = $_GET['NISN'];
$asal_sekolah = $_GET['asal_sekolah'];
$almt_sekolah = $_GET['almt_sekolah'];
$nm_ayah = $_GET['nm_ayah'];
$umur_ayah = $_GET['umur_ayah'];
$almt_ayah = $_GET['almt_ayah'];
$no_telp_ayah = $_GET['no_telp_ayah'];
$pendidikan_ayah = $_GET['pendidikan_ayah'];
$pekerjaan_ayah = $_GET['pekerjaan_ayah'];
$nm_ibu = $_GET['nm_ibu'];
$umur_ibu = $_GET['umur_ibu'];
$almt_ibu = $_GET['almt_ibu'];
$no_telp_ibu = $_GET['no_telp_ibu'];
$pendidikan_ibu = $_GET['pendidikan_ibu'];
$pekerjaan_ibu = $_GET['pekerjaan_ibu'];
$foto_siswa = $_GET['foto_siswa'];



$sql = "SELECT * FROM tb_daftar";
$result = $conn->query($sql);
echo "<br>";
if($auth == "888"){

if(!empty($_GET) && $perintah=="select"){
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()){
            echo "Id Daftar : ". $row['kd_siswabaru']. " Nama Siswa Baru : ". $row['nm_siswa']. " Tempat Lahir : ". $row['tempat_lahir']. " Tanggal Lahir : ". $row['tanggal_lahir']. " Pendidikan : ". $row['pendidikan']. " Jurusan : ". $row['jurusan']. " Mata Pelajaran : ". $row['mapel']. " TMT : ". $row['tmt']. " Foto Guru : ". $row['foto_guru']. "<br>";
        }

    } else{
        echo "0 result";
    }
    $conn->close();
}

if(!empty($_GET) && $perintah=="insert"){
    $sql = "INSERT INTO tb_ (id_guru, nm_guru, tempat_lahir, tanggal_lahir, pendidikan, jurusan, mapel, tmt, foto_guru) VALUES ('".$id_guru. "','".$nm_guru."','".$tempat_lahir."','".$tanggal_lahir."','".$pendidikan."','".$jurusan."','".$mapel."','".$tmt."','".$foto_guru."')";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}

$return_arr = array();
$sql = "select * from tb_guru";
$result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            
            $row_array['id_guru'] = $row['id_guru'];
            $row_array['nm_guru'] = $row['nm_guru'];
            $row_array['tempat_lahir'] = $row['tempat_lahir'];
            $row_array['tanggal_lahir'] = $row['tanggal_lahir'];
            $row_array['pendidikan'] = $row['pendidikan'];
            $row_array['jurusan'] = $row['jurusan'];
            $row_array['mapel'] = $row['mapel'];
            $row_array['tmt'] = $row['tmt'];
            $row_array['foto_guru'] = $row['foto_guru'];
    
            array_push($return_arr,$row_array);
        }
        echo json_encode($return_arr);
    } else {
            echo "0 results";
    }

$conn->close();

}
