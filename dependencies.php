<?php
    if (!defined("pages"))
        define("pages", [
            ['index.php', 'Home'],
            ['movieorder.php', 'Movies In Order'],
            ['characters.php', 'Characters'],
            ['trivia.php', 'Trivia'],
            ['projects.php', 'Upcoming Projects'],
        ]);
    
    if (!defined("nav_order"))
        define("nav_order", [0, 1, 2, 3, 4]);

    if (!isset($conn))
        $conn = mysqli_connect('localhost', 'root', 'password', 'sql_cinemarvel', 3306);
    if (!isset($tab_title))
        $tab_title = 'Untitled';
    if (!isset($cur_page))
        $cur_page = $_SERVER['PHP_SELF'];
    if (!isset($cur_url))
        $cur_url = strtok($_SERVER["REQUEST_URI"], '?');
    if (!function_exists('fetch')) {
        function fetch(string $query) : array
        {
            global $conn;
            $result = mysqli_query($conn, $query);
            $arr = mysqli_fetch_all($result, MYSQLI_ASSOC);
            mysqli_free_result($result);
            return $arr;
        }
    }

    if (!function_exists('get_rand_page')) {
        function get_rand_page() : string
        {
            $page_idx = 0;
            while ($page_idx == 0)
                $page_idx = array_rand(pages);
            return pages[$page_idx][0];
        }
    }
?>