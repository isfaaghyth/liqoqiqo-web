<?php
	include_once 'connect.php';

	$kueri = $con->prepare("SELECT * FROM menti");
	$kueri->execute();
	$hasil = $kueri->fetchall();

	foreach ($hasil as $row) {
        echo json_encode(
        	array(
        		"data" => array(
        			"id" => $row['id'],
        			"mentor_id" => $row['mentor_id'],
                    "menti_id" => $row['mentor_id'],
                    "mentoring_id" => $row['mentoring_id'],
        		)
        	)
        );
    }

?>