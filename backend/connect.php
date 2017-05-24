<?php
	define('DBHOST', 'localhost');
	define('DBNAME', 'liqoqiqo');
	define('DBUSER', 'root');
	define('DBPASS', '');
	
	$con = new PDO("mysql:dbname=" . DBNAME . ";dbhost=" . DBHOST . ";charset=utf8mb4", DBUSER, DBPASS);
?>