<?php
	include_once 'connect.php';

	$kueri = $con->prepare("SELECT * FROM user");
	$kueri->execute();
	$hasil = $kueri->fetchall();

	foreach ($hasil as $row) {
        echo json_encode(
        	array(
        		"data" => array(
        			"id" => $row['id'],
        			"nama" => $row['name'],
                    "email" => $row['email'],
                    "kata_sandi" => $row ['password'],
                    "avatar" => $row ['avatar'],
                    "role_id" => $row ['role_id']
        		)
        	)
        );
    }

?>