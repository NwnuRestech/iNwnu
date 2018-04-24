<?php

$conn = @mysql_connect('yuechen','root','root');
if (!$conn) {
	die('Could not connect: ' . mysql_error());
}
mysql_select_db('xxs', $conn);

?>