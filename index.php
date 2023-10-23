<?php
// https://getcomposer.org/doc/01-basic-usage.md#autoloading
require __DIR__ . '/vendor/autoload.php';
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>HTML 5 Boilerplate</title>
        <link rel="stylesheet" href="assets/css/app.css">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Work+Sans&display=swap" rel="stylesheet">
    </head>
    <body>
        <a href="?action=main">Main</a>
        <a href="?action=dump">Dump</a>
        <a href="?action=testdb">Test Database</a>


        <?php
        if (isset($_GET['action']) && $_GET['action'] == 'main') {
            ?>
            <h1>Main</h1>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam aliquet leo ligula, at interdum ex iaculis nec. Ut congue aliquam tempor. Ut sit amet rutrum est. Donec sodales nec lectus quis placerat. Maecenas ultrices tristique ligula non auctor. Nunc at lacus et eros consectetur mollis ut a turpis. Praesent malesuada euismod mi, lobortis lobortis nunc laoreet a. Cras facilisis dictum pretium. Duis euismod ipsum pellentesque, mattis enim vitae, vehicula metus.
            </p>
            <?php
        }
        if (isset($_GET['action']) && $_GET['action'] == 'dump') {
            ?>
            <h1>Basic usage of dump (symfony/var-dumper)</h1>
            <p>
                <a href="https://symfony.com/doc/current/components/var_dumper.html">Documentation</a>
            </p>
            <?php
            dump([
                'key1' => 'value1',
                'key2' => 'value2',
            ]);
        }
        if (isset($_GET['action']) && $_GET['action'] == 'testdb') {
            ?>
            <h1>Test Database</h1>

            <?php
            $servername = "localhost";//db on docker
            $servername = "db";
            $username = "movies";
            $password = "movies";
            $db = "movies";

            try {
                $conn = new PDO("mysql:host=$servername;dbname=$db", $username, $password);
                // set the PDO error mode to exception
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                echo "Connected successfully";
                ?>
                <h2>Lista film:</h2>
                <ul>
                    <?php
                    $moviesQuery = $conn->prepare("SELECT * FROM movies");
                    $moviesQuery->execute();
                    $movies = $moviesQuery->fetchAll(\PDO::FETCH_ASSOC);
                    //dump($movies);
                    foreach ($movies as $movie) {
                        echo '<li>' . $movie['title'] . '(' . $movie['year'] . ')</li>';
                    }
                    ?>
                </ul>
                <?php


            } catch (PDOException $e) {
                echo "Connection failed: " . $e->getMessage();
            }
        }
        ?>

        <script src="assets/js/app.js"></script>
    </body>
</html>