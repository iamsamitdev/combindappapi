<?php
include 'connectdb.php';

// Select ข้อมูลจากตาราง jobs
$sql = "SELECT * FROM  jobs ORDER BY id DESC";
$query = mysqli_query($connnect,$sql);

// loop ข้อมูลใส่ตัวแปร array
while($data = mysqli_fetch_assoc($query)){
    $jobData[] = $data;
}

// แปลงเป็น JSON
echo json_encode($jobData,JSON_HEX_QUOT | JSON_HEX_TAG);

?>