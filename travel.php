<?php
    include 'dependencies.php';
    function get_rand_gif() : string
    {
        $gifs = [
            'img\space-gifs\space1.gif',
            'img\space-gifs\space2.gif',
            'img\space-gifs\space3.gif',
        ];
        return $gifs[array_rand($gifs)];
    }
    $tab_title = 'Wooo';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="favicon.ico">
    <title><?=$tab_title?> | Cinemarvel</title>
    <style>
        html,body {
            margin:0;
            height:100%;
            background-color: black;
        }
        img {
            display:block;
            width:100%; 
            height:100%;
            object-fit: cover;
            filter: blur(7px);
        }
    </style>
</head>
<body>
<a id="rand_url" href="<?=get_rand_page()?>"></a>
<img src="<?=get_rand_gif()?>">
<script>
    setTimeout(function(){
        window.open(document.getElementById("rand_url").href,"_self");
    },2000);
</script>
</body>
</html>