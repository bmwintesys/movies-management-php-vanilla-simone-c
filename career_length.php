<?php
// connection parameters
$servername = "localhost"; //db on docker
$servername = "db";
$username = "movies";
$password = "movies";
$db = "movies";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$db", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully <br/>";

    //actors query
    $query = $conn->prepare("SELECT a.id AS actor_id, a.firstname, a.lastname,
                            MAX(m.year) - MIN(m.year) AS career_length
                            FROM actors AS a
                            JOIN movie_actor AS ma ON a.id = ma.actor_id
                            JOIN movies AS m ON ma.movie_id = m.id
                            GROUP BY actor_id, firstname, lastname
                            ORDER BY career_length DESC
                            LIMIT 3;");
    $query->execute();

    $actors = $query->fetchAll(\PDO::FETCH_ASSOC);

    foreach ($actors as $actor) {
        echo "{$actor['firstname']} {$actor['lastname']} con la carriera di {$actor['career_length']} anni <br/>";
    }
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
