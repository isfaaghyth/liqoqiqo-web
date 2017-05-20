<?php
	include_once 'connect.php';

	$kueri = $con->prepare("SELECT * FROM dataku");
	$kueri->execute();
	$hasil = $kueri->fetchall();

	foreach ($hasil as $row) {
        echo json_encode(
        	array(
        		"data" => array(
        			"nama" => $row['nama'],
        			"umur" => $row['umur']
        		)
        	)
        );
    }

?>