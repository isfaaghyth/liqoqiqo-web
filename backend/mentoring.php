<?php
	include_once 'connect.php';

	$kueri = $con->prepare("SELECT * FROM mentoring");
	$kueri->execute();
	$hasil = $kueri->fetchall();

	foreach ($hasil as $row) {
        echo json_encode(
        	array(
        		"data" => array(
        			"id" => $row['id'],
        			"nama" => $row['name'],
                    "lat" => $row['lat'],
                    "lon" => $row['lon'],
                    "alamat" => $row['address'],
                    "catatan" => $row['note'],
                    "hari" => $row['day'],
                    "tanggal" => $row['date'],
                    "mentoring_id" => $row['mentoring_id']
        		)
        	)
        );
    }

?>