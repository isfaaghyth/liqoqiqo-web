<?php
    header('Content-Type: application/json; charset=utf-8');
    include_once 'connect.php';

    $kueri = $con->prepare("SELECT * FROM doa CHARACTER SET utf8");
    $kueri->execute();
    $hasil = $kueri->fetchall();

    foreach ($hasil as $row) {
        echo json_encode(
            array(
                "nama_doa" => $row['name'],
                "arabic" => iconv('windows-1256', 'utf-8', ($row['arabic'])),
                "latin" => $row['latin'],
                "artinya" => $row['meaning']
            ),
        JSON_UNESCAPED_UNICODE);
    }

?>