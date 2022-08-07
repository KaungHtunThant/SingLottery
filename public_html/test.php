<!DOCTYPE html>
<html>
    <head>
        <?php include "static/head.php" ?>
        <?php include "static/dataTable_css.php" ?>
        <title>(Title)</title>
    </head>
    <body id="page-top">
        <?php include "static/header.php" ?>

        <?php
            $batch_id = htmlspecialchars($_POST['batch_id']);
            $t1array = explode(" ",preg_replace('!\s+!', ' ', htmlspecialchars($_POST['t1'])));
            $t2array = explode(" ",preg_replace('!\s+!', ' ', htmlspecialchars($_POST['t2'])));
            $t3array = explode(" ",preg_replace('!\s+!', ' ', htmlspecialchars($_POST['t3'])));
            $t4array = explode(" ",preg_replace('!\s+!', ' ', htmlspecialchars($_POST['t4'])));
            $t5array = explode(" ",preg_replace('!\s+!', ' ', htmlspecialchars($_POST['t5'])));
            $t6array = explode(" ",preg_replace('!\s+!', ' ', htmlspecialchars($_POST['t6'])));
            $t7array = explode(" ",preg_replace('!\s+!', ' ', htmlspecialchars($_POST['t7'])));
            $sql = 'insert into results(batch_id, prize_id, result_lottery_no) values($batch_id, 1, $t1array[0]),($batch_id, 2, $t1array[1]),($batch_id, 3, $t1array[2])';
            for ($i=0; $i < count($t2array); $i++) {
                $sql = $sql.",($batch_id, 4, $t2array[$i])";
            }
            for ($i=0; $i < count($t3array); $i++) {
                $sql = $sql.",($batch_id, 5, $t3array[$i])";
            }
            for ($i=0; $i < count($t4array); $i++) {
                $sql = $sql.",($batch_id, 6, $t4array[$i])";
            }
            for ($i=0; $i < count($t5array); $i++) {
                $sql = $sql.",($batch_id, 7, $t5array[$i])";
            }
            for ($i=0; $i < count($t6array); $i++) {
                $sql = $sql.",($batch_id, 8, $t6array[$i])";
            }
            for ($i=0; $i < count($t7array); $i++) {
                $sql = $sql.",($batch_id, 9, $t7array[$i])";
            }
            $sql = $sql.";";
            echo $sql;
        ?>

        <?php include "static/footer.php" ?>

        <?php include "static/bootstrap_core_jscript.php" ?>
        <?php include "static/core_plugin_jscript.php" ?>
        <?php include "static/custom_jscript_all.php" ?>
        <?php include "static/dataTable_jscript.php" ?>
    </body>
</html>