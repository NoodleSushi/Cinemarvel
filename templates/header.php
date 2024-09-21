<?php
    include 'dependencies.php';
    function gen_nav_link(string $page, string $name) : void
    {
        global $cur_page;
        ?>
        <a class="<?=($cur_page == $page) ? 'active':''?>" href="<?=$page?>"><?=$name?></a>
        <?php
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/base-style.css">
    <link rel="icon" href="favicon.ico">
    <title><?=$tab_title?> | Cinemarvel</title>
</head>
<body>
<header>
    <nav>
        <a href="index.php">
            <img style="position: relative; top: 18px; width: 325px; height: 100px;" src="img/CineMarvelLogo.jpg">
        </a>
        <div class="header-nav">
            <?php
            foreach (nav_order as $idx)
                gen_nav_link(pages[$idx][0], pages[$idx][1]);
            ?>
        </div>
    </nav>
</header>