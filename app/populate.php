<?php

use Laminas\Crypt\Password\Bcrypt;
//Seed our database with our 
$servername = "localhost";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$servername", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "
    CREATE DATABASE netwatch";
    $conn->exec($sql);
} catch (PDOException $e) {
}
$conn = null;

try {
    $conn = new PDO("mysql:host=$servername;dbname=netwatch", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = file_get_contents("../app/sql/createTables.sql");
    $conn->exec($sql);
} catch (PDOException $e) {
    echo "<br>" . $e->getMessage();
}
$conn = null;

try {
    $conn = new PDO("mysql:host=$servername;dbname=netwatch", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = file_get_contents("../app/sql/insertData.sql");
    $conn->exec($sql);
} catch (PDOException $e) {
    // echo "<br>" . $e->getMessage();
}
$conn = null;

try {
    $conn = new PDO("mysql:host=$servername;dbname=netwatch", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $bcrypt = new Bcrypt();
    $hashedPassword = $bcrypt->create('password');
    $sql = "INSERT INTO users VALUES (role,name,email,password) VALUES(1, 'John Snow','admin@admin.com'," . $hashedPassword . ");";
    $conn->exec($sql);
} catch (PDOException $e) {
    echo "<br>" . $e->getMessage();
}
$conn = null;
