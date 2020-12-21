<?php
include "konek.php";

$auth = $_GET['auth'];
$perintah = $_GET['perintah'];
$id_alumni = $_GET['id_alumni'];
$nama = $_GET['nama'];
$jenis_kelamin = $_GET['jenis_kelamin'];
$tempat_lahir = $_GET['tempat_lahir'];
$tanggal_lahir = $_GET['tanggal_lahir'];
$alamat = $_GET['alamat'];
$tahun_lulus = $_GET['tahun_lulus'];
$email = $_GET['email'];
$no_telp = $_GET['no_telp'];
$sekolah_lanjutan = $_GET['sekolah_lanjutan'];


$sql = "SELECT * FROM tb_alumni";
$result = $conn->query($sql);
echo "<br>";
if($auth == "888"){

if(!empty($_GET) && $perintah=="select"){
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()){
            echo "Id Alumni : ". $row['id_alumni']. " Nama Siswa : ". $row['nama']. " Jenis Kelamin : ". $row['jenis_kelamin']. " Tempat Lahir : ". $row['tempat_lahir']. " Tanggal Lahir : ". $row['tanggal_lahir']. " Alamat : ". $row['alamat']. " Tahun Lulus : ". $row['tahun_lulus']. " Email : ". $row['email']. " no_telp : ". $row['no_telp']. " Sekolah Lanjutan / Kegiatan : ". $row['sekolah_lanjutan']."<br>";
        }

    } else{
        echo "0 result";
    }
    $conn->close();
}

if(!empty($_GET) && $perintah=="insert"){
    $sql = "INSERT INTO tb_alumni (id_alumni, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat, tahun_lulus, email, no_telp, sekolah_lanjutan) VALUES ('".$id_alumni. "','".$nama."','".$jenis_kelamin."','".$tempat_lahir."','".$tanggal_lahir."','".$alamat."','".$tahun_lulus."','".$email."','".$no_telp."','".$sekolah_lanjutan."')";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}

$return_arr = array();
$sql = "select * from tb_alumni";
$result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            
            $row_array['id_alumni'] = $row['id_alumni'];
            $row_array['nama'] = $row['nama'];
            $row_array['jenis_kelamin'] = $row['jenis_kelamin'];
            $row_array['tempat_lahir'] = $row['tempat_lahir'];
            $row_array['tanggal_lahir'] = $row['tanggal_lahir'];
            $row_array['alamat'] = $row['alamat'];
            $row_array['tahun_lulus'] = $row['tahun_lulus'];
            $row_array['email'] = $row['email'];
            $row_array['no_telp'] = $row['no_telp'];
            $row_array['sekolah_lanjutan'] = $row['sekolah_lanjutan'];
    
            array_push($return_arr,$row_array);
        }
        echo json_encode($return_arr);
    } else {
            echo "0 results";
    }

$conn->close();

}
?>
