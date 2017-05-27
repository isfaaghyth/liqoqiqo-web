<?php
	include_once 'connect.php';

	$kueri = $con->prepare("SELECT * FROM role");
	$kueri->execute();
	$hasil = $kueri->fetchall();

	foreach ($hasil as $row) {
        echo json_encode(
        	array(
        		"data" => array(
        			"id" => $row['id'],
        			"nama" => $row['name']
        		)
        	)
        );
    }

?>