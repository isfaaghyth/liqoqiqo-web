<?php
	define('DBHOST', 'localhost');
	define('DBNAME', 'db_test');
	define('DBUSER', 'root');
	define('DBPASS', '');
	
	$con = new PDO("mysql:dbname=" . DBNAME . ";dbhost=" . DBHOST, DBUSER, DBPASS);
?>