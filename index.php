<?php
/* Store index page
 *
 * This script depends on the following code in .htaccess:
 *    <IfModule mod_rewrite.c>
 *        RewriteEngine on
 *        RewriteCond %{REQUEST_FILENAME} !-f
 *        RewriteCond %{REQUEST_FILENAME} !-d
 *        RewriteRule ^ index.php [L]
 *    </IfModule>
 *
 * Place the "static" and "views" directories in the root
 * along with this script and the above .htaccess file.
 */

include('db.php');
include('vars.php');

//Query the DB
global $mysqli;
$strsql = "select * from stock";
$strsqlfeature = "select * from stock where featureitem='Y'";
if ($result = $mysqli->query($strsql)) {
   // printf("<br>Select returned %d rows.\n", $result->num_rows);
	while ($row = $result->fetch_object()) {
		$items[] = clone $row;
	}
	$result->close();
} else {
	echo "Failed to query the database!";
}

// get featuring products
if ($resultf = $mysqli->query($strsqlfeature)) {
   // printf("<br>Select returned %d rows.\n", $result->num_rows);
	while ($row = $resultf->fetch_object()) {
		$itemsf[] = clone $row;
	}
	$resultf->close();
} else {
	echo "Failed to query the database!";
}

$mysqli->close();

$lll_route = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

if (isset($_GET['id'])) {
	$item = $items[$_GET['id'] - 1];
}

if (isset($_GET['id'])) {
	$itemf = $itemsf[$_GET['id'] - 1];
}

if (file_exists("views/$lll_route.tpl")) {
	ob_start();
	require_once("views/$lll_route.tpl");
	$lllpage = ob_get_contents();
	ob_end_clean();

	echo $lllpage;

} elseif (($lll_route == "") || ($lll_route == "/")){
	ob_start();
	require_once("views/home.tpl");
	$lllpage = ob_get_contents();
	ob_end_clean();

	echo $lllpage;
} else {
	echo "\"$lll_route\" page not found";
	ob_start();
	require_once("views/home.tpl");
	$lllpage = ob_get_contents();
	ob_end_clean();

	echo $lllpage;
}

?>
