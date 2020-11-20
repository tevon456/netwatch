<?php
//Seed our database with our 
$servername = "localhost";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$servername", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $conn->prepare("SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'netwatch'");
    $stmt->execute();

    $result = $stmt->fetchAll();
    if (empty($result[0])) {
        //DB doesnt exist
        require_once 'populate.php';
    } else {
        //DB exists already
    }
} catch (PDOException $e) {
    echo "<br>" . $e->getMessage();
}
