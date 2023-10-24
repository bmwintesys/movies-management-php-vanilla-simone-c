<?php

use Php\Models\Movie;

$id = $_GET['id'];

$movies = new Movie();
$movie = $movies->get($id);
$actors = $movies->getActorsById($id);

?>
<h1>Movie Detail</h1>
<p><strong>Titolo: </strong><?php echo $movie['title'] ?><br/>
<strong>Anno: </strong><?php echo $movie['year'] ?><br/>
<strong>Story:</strong><br/><?php echo $movie['story'] ?></p>

<strong>Actors:</strong>
<ul style="margin: 0;">
    <?php foreach($actors as $actor){ ?>
        <li><?php echo "{$actor['firstname']} {$actor['lastname']}" ?></li>
    <?php } ?>
</ul>