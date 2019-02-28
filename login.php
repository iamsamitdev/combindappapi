<?php
include 'connectdb.php';

/*
$sql   = "SELECT * FROM users";
$query = mysqli_query($connnect, $sql);

// loop อ่านข้อมูล
while ($result = mysqli_fetch_assoc($query))
{
$data[] = $result;
//print_r($result);
}

// convert array to json
echo json_encode($data);
 */

// เช็คว่าเป็นการ post ข้อมูลมาหรือไม่
if ($_SERVER['REQUEST_METHOD'] === 'POST')
{
    // รับค่าจาก Client
    $inputJSON = file_get_contents('php://input');
    // แปลง array
    $input = json_decode($inputJSON, true);

    //echo $input['username'];
    //echo $input['password'];

    $sql = "SELECT * FROM users
                WHERE username='$input[username]' and password='$input[password]'";
    $query    = mysqli_query($connnect, $sql);
    $rowCount = mysqli_num_rows($query);

    // ดึงข้อมูลชื่อ
    $data = mysqli_fetch_assoc($query);

    if ($rowCount == 1)
    {
        echo '{
            "msg":"Login Success",
            "fullname":"' . $data['fullname'] . '"
        }';
    }
    else
    {
        echo '{"msg":"Login Fail"}';
    }

}
else
{
    http_response_code(400);
    echo '{"msg":"Bad Request Method"}';
}
