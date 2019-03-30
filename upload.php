<?php
// อนุญาติให้เรียกไฟล์จากแหล่งภายนอกได้
header('Access-Control-Allow-Origin: *');
header("Content-Type: application/json; charset=UTF-8");
if (isset($_SERVER['HTTP_ORIGIN']))
{
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400'); // cache for 1 day
}
// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS')
{
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
    {
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
    }

    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
    {
        header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
    }

    exit(0);
}
// บันทึกข้อมูล status , lat , lon , accuracy
// เช็คว่าเป็นการ post ข้อมูลมาหรือไม่
if ($_SERVER['REQUEST_METHOD'] === 'POST')
{
    $target_path = "images/";
    $target_path = $target_path . basename($_FILES['file']['name']);
    if (move_uploaded_file($_FILES['file']['tmp_name'], $target_path))
    {
        echo '{"msg":"Upload and move success"}';
    }
    else
    {
        //echo $target_path;
        echo '{"msg":"There was an error uploading the file, please try again!"}';
    }
}
else
{
    http_response_code(400);
    echo '{"msg":"Bad Request Method"}';
}
