<?php
require 'vendor/autoload.php';

use League\Csv\Reader;

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

// Percorso del file CSV da importare
$csvFilePath = 'imports/movies.csv';

$csv = Reader::createFromPath($csvFilePath, 'r');
$csv->setDelimiter(';');

foreach ($csv as $row) {
    $title = $row[0];
    $year = $row[1];
    $story = $row[2];

    $sql = "INSERT INTO movies (title, year, story) VALUES (?, ?, ?)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$title, $year, $story]);
}

echo "Import completed.";
