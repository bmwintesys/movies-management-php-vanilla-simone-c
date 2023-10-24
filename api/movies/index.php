<?php

require $_SERVER['DOCUMENT_ROOT'] . '/vendor/autoload.php';

use Php\Models\Movie;

header('Content-Type: application/json');

$movies = new Movie;

$result = $movies->list("ORDER BY title ASC");

$movies = [];

foreach ($result as $row) {
    $movies[] = $row;
}

echo json_encode($movies);
