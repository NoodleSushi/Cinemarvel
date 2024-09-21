<?php
    include 'dependencies.php';
    $tab_title = 'Trivia';

    $trivia = fetch('SELECT * FROM trivia ORDER BY RAND() LIMIT 1');
    $desc = 'Want to know more about <span class="txt-red">Marvel</span>?';
    $img_dir = 'img/trivia/marvel.jpg';

    if (isset($_REQUEST['trivia'])) 
    {
        $desc = $trivia[0]['description'];
        $img_dir = $trivia[0]['img_dir'];
    }
?>

<?php include 'templates/header.php';?>
    <div id="random-fact-container">
        <img id="fact-img" src="<?=$img_dir?>" alt="fact-img">
        <div id="fact-txt"><?=$desc?></div>
        <button id="fact-btn" type="button" onclick="location.href='<?=$cur_url?>?trivia'">Click Me</button>
    </div>
    <div class="space"></div>
<?php include 'templates/footer.php';?>