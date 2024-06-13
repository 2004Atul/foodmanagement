<?php
// Start Session
session_start();

// Fetch environment variables
$dbServer = getenv('orderista.database.windows.net');
$dbName = getenv('onlinefoodorder');
$dbUser = getenv('azure');
$dbPassword = getenv('@Atul2004');

if (!$dbServer || !$dbName || !$dbUser || !$dbPassword) {
    die('Environment variables for database connection are not set.');
}

// Database connection
$conn = mysqli_connect($dbServer, $dbUser, $dbPassword, $dbName);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

echo "Connected successfully to the Azure SQL Database";

// Note: You can use the following lines if you are using a local database for development
// define('LOCALHOST', 'localhost');
// define('DB_USERNAME', 'root');
// define('DB_PASSWORD', '');
// define('DB_NAME', 'onlinefoodorder');
// $conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD, DB_NAME) or die(mysqli_error()); //Database Connection
?>
