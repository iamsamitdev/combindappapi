<?php
include 'connectdb.php';

// บันทึกข้อมูล status , lat , lon , accuracy
// เช็คว่าเป็นการ post ข้อมูลมาหรือไม่
if ($_SERVER['REQUEST_METHOD'] === 'POST')
{
    // บันทึกข้อมูลงตาราง jobs
    // รับค่าจาก Client
    $inputJSON = file_get_contents('php://input');
    // แปลง array
    $input = json_decode($inputJSON, true);

    $sql = "INSERT INTO jobs(jobstatus,jobimage,jobdate,joblat,joblon,jobaccuracy,jobby)
                VALUES('$input[jobstatus]','$input[jobimage]',NOW(),'$input[joblat]',
                '$input[joblon]','$input[jobaccuracy]','$input[jobby]')";
    $query = mysqli_query($connnect, $sql);
    if ($query)
    {
        echo '{"msg":"Add job success"}';
    }
    else
    {
        echo '{"msg":"Add job fail"}';
    }
}
else
{
    http_response_code(400);
    echo '{"msg":"Bad Request Method"}';
}
