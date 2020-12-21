<?php
include "konek.php";

$auth = $_GET['auth'];
$perintah = $_GET['perintah'];
$id_jadwal = $_GET['id_jadwal'];
$image = $_GET['image'];
$name = $_GET['name'];
 

$sql = "SELECT * FROM tb_jadwal";
$result = $conn->query($sql);
echo "<br>";
if($auth == "888"){

if(!empty($_GET) && $perintah=="select"){
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()){
            echo "Id Jadwal : ". $row['id_jadwal']. " Gambar : ". $row['image']. " Nama : ". $row['name']."<br>";
        }

    } else{
        echo "0 result";
    }
    $conn->close();
}

if(!empty($_GET) && $perintah=="insert"){

    $sql = "INSERT INTO tb_jadwal (id_jadwal, image, name) VALUES ('". $id_jadwal. "', '".$image."', '".$name."')";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}

$return_arr = array();
$sql = "select * from tb_jadwal";
$result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            
            $row_array['id_jadwal'] = $row['id_jadwal'];
            $row_array['image'] = $row['image'];
            $row_array['name'] = $row['name'];

            array_push($return_arr,$row_array);
        }
        echo json_encode($return_arr);
    } else{
            echo "0 results";
    }

$conn->close();
}
?>