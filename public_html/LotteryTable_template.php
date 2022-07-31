<?php
    include 'config/conf_new.php';
    if(!isset($_SESSION['user_id'])){
        _goto('Login_template.php');
    }
?>

<!DOCTYPE html>
<html>
    <head>
        <?php include "static/head.php" ?>
        <?php include "static/dataTable_css.php" ?>
        <title>(Title)</title>
    </head>
    <body id="page-top">
        <?php include "static/header.php" ?>

        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">Lottries Table</h1>

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Number</th>
                                    <th>Customer Name</th>
                                    <th>Customer Phone No.</th>
                                    <th>Payment Method</th>
                                    <th>Paid</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>Number</th>
                                    <th>Customer Name</th>
                                    <th>Customer Phone No.</th>
                                    <th>Payment Method</th>
                                    <th>Paid</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                <?php
                                    // dbLottriesSelect();
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container-fluid -->

        <?php include "static/footer.php" ?>

        <?php include "static/bootstrap_core_jscript.php" ?>
        <?php include "static/core_plugin_jscript.php" ?>
        <?php include "static/custom_jscript_all.php" ?>
        <?php include "static/dataTable_jscript.php" ?>
    </body>
</html>