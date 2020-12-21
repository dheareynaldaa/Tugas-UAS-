<?php
include "konek.php";

$auth = $_GET['auth'];
$perintah = $_GET['perintah'];
$id_eks = $_GET['id_eks'];
$nn_siswa = $_GET['nm_siswa'];
$jk = $_GET['jk'];
$kelas = $_GET['kelas'];
$ekstrakulikuler = $_GET['ekstrakulikuler'];
$almt = $_GET['almt'];
$tahun_lulus = $_GET['tahun_lulus'];
$email = $_GET['email'];
$no_telp = $_GET['no_telp'];
$no_telp_ortu = $_GET['no_telp_ortu'];
$alasan = $_GET['alasan'];
  

$sql = "SELECT * FROM tb_ekstrakulikuler";
$result = $conn->query($sql);
echo "<br>";
if($auth == "888"){

if(!empty($_GET) && $perintah=="select"){
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()){
            echo "No : ". $row['id_eks']. " Nama Siswa : ". $row['nm_siswa']. " Jenis Kelamin : ". $row['jk']. " Kelas : ". $row['kelas']. " Nama Ekstrakulikuler : ". $row['ekstrakulikuler']. " Alamat : ". $row['almt']. " No Telp : ". $row['no_telp']. " No Telp Orang Tua : ". $row['no_telp_ortu']. " Alasan : ". $row['alasan']."<br>";
        }
    } else{
        echo "0 result";
    }
    $conn->close();
}

if(!empty($_GET) && $perintah=="insert"){

    $sql = "INSERT INTO tb_ekstrakulikuler (id_eks, nm_siswa, jk, kelas, ekstrakulikuler, almt, no_telp, no_telp_ortu, alasan) VALUES ('".$id_eks."','".$nm_siswa."','".$jk."','".$kelas."','".$ekstrakulikuler."','".$almt."','".$no_telp."','".$no_telp_ortu."','".$alasan."')";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}

$return_arr = array();
$sql = "select * from tb_ekstrakulikuler";
$result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            
            $row_array['id_eks'] = $row['id_eks'];
            $row_array['nm_siswa'] = $row['nm_siswa'];
            $row_array['jk'] = $row['jk'];
            $row_array['kelas'] = $row['kelas'];
            $row_array['ekstrakulikuler'] = $row['ekstrakulikuler'];
            $row_array['almt'] = $row['almt'];
            $row_array['no_telp'] = $row['no_telp'];
            $row_array['no_telp_ortu'] = $row['no_telp_ortu'];
            $row_array['alasan'] = $row['alasan'];

            array_push($return_arr,$row_array);
        }
        echo json_encode($return_arr);
    } else {
            echo "0 results";
    }

$conn->close();

}
?>