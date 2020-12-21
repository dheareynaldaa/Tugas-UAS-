<?php
include "konek.php";

$auth = $_GET['auth'];
$perintah = $_GET['perintah'];
$kd_barang = $_GET['kd_barang'];
$nm_barang = $_GET['nm_barang'];
$hrg_barang = $_GET['hrg_barang'];
 

$sql = "SELECT * FROM tbBarang";
$result = $conn->query($sql);
echo "<br>";
if($auth == "888"){

if(!empty($_GET) && $perintah=="select"){
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()){
            echo "Kode Barang : ". $row['kd_barang']. " Nama Barang : ". $row['nm_barang']. " Harga Barang : ". $row['hrg_barang']."<br>";
        }

    } else{
        echo "0 result";
    }
    $conn->close();
}


if(!empty($_GET) && $perintah=="insert"){

    $sql = "INSERT INTO tbBarang (kd_barang, nm_barang, hrg_barang) VALUES ('". $kd_barang. "', '".$nm_barang."', '".$hrg_barang."')";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}

if(!empty($_GET) && $perintah=="update"){

    $sql = "UPDATE tbBarang set nm_barang='".$nm_barang."' where kd_barang='".$kd_barang."'";
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}

if(!empty($_GET) && $perintah=="delete"){

    $sql = "delete from tbBarang where kd_barang=".$kd_barang;
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "Record has been deleted";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}

$return_arr = array();
$sql = "select * from tbBarang";
$result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            
            $row_array['kd_barang'] = $row['kd_barang'];
            $row_array['nm_barang'] = $row['nm_barang'];
            $row_array['hrg_barang'] = $row['hrg_barang'];

            array_push($return_arr,$row_array);
        }
        echo json_encode($return_arr);
    } else {
            echo "0 results";
    }


$conn->close();

}
?>