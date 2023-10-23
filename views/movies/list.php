<?php

use Php\Models\Movie;

$movies = new Movie();
$movies = $movies->list();

?>
<h1>Movies List</h1>
<ul>
    <?php foreach($movies as $movie){ ?>
        <li>
            <a href="<?php echo "/?action=movie_detail&id=" . $movie['id'] ?>">
                <?php echo $movie['title'] ?>
            </a>
        </li>
    <?php } ?>
</ul>