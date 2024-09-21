<?php
    include 'dependencies.php';
    $tab_title = 'Movie Order';
    $movies = fetch('SELECT * FROM sql_cinemarvel.movies ORDER BY chronology ');
?>

<?php include 'templates/header.php';?>
    <h1>Marvel Cinematic Universe Movie Order</h1>
    <div class='thumb-row scrollable'>
        <?php
            foreach ($movies as $movie)
            {
                ?>
                <a href="<?=$movie['imdb_url']?>" target="_blank">
                    <div>
                        <img class="image poster" src="<?=$movie['img_dir']?>">
                        <h3><?=$movie['title'].'</br>('.$movie['year'].')'?></h3>
                    </div>
                </a>
                <?php
            }
        ?>
    </div>
    <div class="space">
    </div>
<?php include 'templates/footer.php';?>