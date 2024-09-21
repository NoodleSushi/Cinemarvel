<?php
    include 'dependencies.php';
    $tab_title = 'Characters';

    $char_types = fetch('SELECT * FROM sql_cinemarvel.character_types');

    $query = 'SELECT * FROM sql_cinemarvel.characters';
    $char_type_id = -1;
    if (isset($_REQUEST['type']) && is_numeric($_REQUEST['type'])) 
    {
        $char_type_id = (int) $_REQUEST['type'];
        if ($char_type_id >= 1 && $char_type_id <= count($char_types))
        {
            $query .= ' WHERE char_type_id = ' . $char_type_id;
            $tab_title .= ': ' . fetch('SELECT * FROM sql_cinemarvel.character_types WHERE char_type_id = ' . $char_type_id)[0]['name'];
        }
    }
    $chars = fetch($query);
?>

<?php include 'templates/header.php';?>
    <h1>CHOOSE YOUR CHARACTER</h1>
    <div class="category-nav">
        <?php
            foreach ($char_types as $char_type)
            {
                $is_same = ($char_type_id == $char_type['char_type_id']);
                ?>
                <a href="<?=$cur_url.((!$is_same) ? '?type='.$char_type['char_type_id'] : '')?>">
                    <div class="<?=($is_same) ? 'active' : ''?>">
                        <?=$char_type['name']?>
                    </div>
                </a>
                <?php
            }
        ?>
    </div>
    
    <?php 
        $idx = 0;
        $size = count($chars);
        while (true)
        {
            if ($idx >= $size)
                break;
            ?> <div class="thumb-row centered"> <?php
            for ($col = 0; $col < 5; $col++)
            {
                if ($idx >= $size)
                    break;
                $char = $chars[$idx];
                ?>
                    <div>
                    <img class="image <?=($char['is_alive'] == 0) ? 'grayed' : '';?>" src="<?=$char['img_dir']?>">
                    <h3><?=$char['hero_name']?></h3>
                    <?php if ($char['real_name'] != ''){?>
                        <h5><i><?=$char['real_name']?></i></h5>
                    <?php }?>
                    </div>
                <?php
                $idx++;
            }
            ?> </div> <?php
        }
    ?>
    <div class="space"></div>
<?php include 'templates/footer.php';?>