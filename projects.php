<?php
    include 'dependencies.php';
    $tab_title = 'Upcoming Projects';

    $proj_types = fetch('SELECT * FROM sql_cinemarvel.project_types');
    
    $query = 'SELECT * FROM sql_cinemarvel.projects';
    $proj_type_id = -1;
    if (isset($_REQUEST['type']) && is_numeric($_REQUEST['type'])) 
    {
        $proj_type_id = (int) $_REQUEST['type'];
        if ($proj_type_id >= 1 && $proj_type_id <= count($proj_types))
        {
            $query .= ' WHERE proj_type_id = ' . $proj_type_id;
            $tab_title .= ': ' . fetch('SELECT * FROM sql_cinemarvel.project_types WHERE proj_type_id = ' . $proj_type_id)[0]['name'];
        }
    }
    $projs = fetch($query);
?>

<?php include 'templates/header.php';?>
    <h1>WHAT DO YOU WANT TO SEE NEXT?</h1>
    <div class="category-nav">
        <?php
            foreach ($proj_types as $proj_type)
            {
                $is_same = ($proj_type_id == $proj_type['proj_type_id']);
                ?>
                <a href="<?=$cur_url.((!$is_same) ? '?type='.$proj_type['proj_type_id'] : '')?>">
                    <div class="<?=($is_same) ? 'active' : ''?>">
                        <?=$proj_type['name']?>
                    </div>
                </a>
                <?php
            }
        ?>
    </div>

    <?php 
        $idx = 0;
        $size = count($projs);
        while (true)
        {
            if ($idx >= $size)
                break;
            ?> <div class="thumb-row centered"> <?php
            for ($col = 0; $col < 5; $col++)
            {
                if ($idx >= $size)
                    break;
                $proj = $projs[$idx];
                ?>
                    <div>
                    <img class="image <?=($proj['is_img_wide'] == 1) ? 'wide' : '';?>" src="<?=$proj['img_dir']?>">
                    <h3><?=$proj['name']?></h3>
                    </div>
                <?php
                $idx++;
            }
            ?> </div> <?php
        }
    ?>
    <div class="space"></div>
<?php include 'templates/footer.php';?>