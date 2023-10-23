<?php
$servername = "db"; //db on docker
$username = "movies";
$password = "movies";
$db = "movies";

try {
    $pdo = new PDO("mysql:host=$servername;dbname=$db", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Errore di connessione al database: " . $e->getMessage());
}

$deleteDate = date('Y-m-d', strtotime('-5 years'));

$sql = "DELETE FROM movies WHERE year < :deleteDate";
$stmt = $pdo->prepare($sql);
$stmt->bindParam(':deleteDate', $deleteDate, PDO::PARAM_STR);
$stmt->execute();

$deletedRows = $stmt->rowCount();

echo "Sono stati cancellati $deletedRows film più vecchi di 5 anni.\n";
