<?php
// PHP Data Objects(PDO) Sample Code:
try {
    $conn = new PDO("sqlsrv:server = tcp:orderista.database.windows.net,1433; Database = onlinefoodorder", "azure", "@Atul2004");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch (PDOException $e) {
    print("Error connecting to SQL Server.");
    die(print_r($e));
}

// SQL Server Extension Sample Code:
$connectionInfo = array("UID" => "azure", "pwd" => "@Atul2004", "Database" => "onlinefoodorder", "LoginTimeout" => 30, "Encrypt" => 1, "TrustServerCertificate" => 0);
$serverName = "tcp:orderista.database.windows.net,1433";
$conn = sqlsrv_connect($serverName, $connectionInfo);
?>