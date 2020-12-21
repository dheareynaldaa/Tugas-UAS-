<?php

$dbServername = "sql210.epizy.com";
$dbUsername = "epiz_27027946";
$dbPassword = "b8RVA0Ts88";
$dbName = "epiz_27027946_mtsnu";

$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);

if(!$conn){
	die("connection Failed :".mysqli_connect_error());
}
?>