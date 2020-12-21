<?php
include "konek.php";

$auth = $_GET['auth'];
$perintah = $_GET['perintah'];
$id_log = $_GET['id_log'];
$user = $_GET['username'];
$pass = $_GET['pass'];
 

$sql = "SELECT * FROM login";
$result = $conn->query($sql);
echo "<br>";
if($auth == "888"){

if(!empty($_GET) && $perintah=="select"){
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()){
            echo "Id Username : ". $row['id_log']. " Nama Username : ". $row['username']. " Password Username : ". $row['pass']."<br>";
        }

    } else{
        echo "0 result";
    }
    $conn->close();
}

if(!empty($_GET) && $perintah=="insert"){

    $sql = "INSERT INTO login (id_log, username, pass) VALUES ('". $id_log. "', '".$username."', '".$pass."')";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}

$return_arr = array();
$sql = "select * from login";
$result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            
            $row_array['id_log'] = $row['id_log'];
            $row_array['username'] = $row['username'];
            $row_array['pass'] = $row['pass'];

            array_push($return_arr,$row_array);
        }
        echo json_encode($return_arr);
    } else {
            echo "0 results";
    }

$conn->close();

}
?>