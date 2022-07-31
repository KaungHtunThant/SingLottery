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
        <title>Lottery Form</title>
    </head>
    <body id="page-top">
        <?php include "static/header.php" ?>

        <div class="container">
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">Lottery Form</h1>
            </div>
            <div class="card shadow h-100 py-2">
                <div class="card-body">
                    <form >
                        <div class="row">
                            <input type="hidden" name="user_id" value="<?php echo $_SESSION['user_id']; ?>">
                            <!-- <input type="hidden" namm=""> -->
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="lottery_no">Lottery No.</label>
                                    <input type="text" class="form-control" id="lottery_no" aria-describedby="lottery_no_Help" placeholder="Enter lottery no.">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="batch_id">Batch</label>
                                    <select class="form-control" id="batch_id" name="batch_id">
                                        <option selected>--- Choose a batch ---</option>
                                        <?php
                                            $result = dbSelect(array('*'), 'batches');
                                            if (mysqli_num_rows($result) > 0) {
                                                while($row = mysqli_fetch_assoc($result)) {
                                        ?>
                                            <option value="<?php echo $row['batch_id']; ?>">
                                                <?php echo $row['end_date']; ?>
                                            </option>
                                        <?php
                                                }
                                            }
                                        ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="customer_name">Customer Name</label>
                                    <input type="text" class="form-control" id="customer_name" aria-describedby="customer_name_Help" placeholder="Enter customer name">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="customer_ph_no">Customer Phone No.</label>
                                    <input type="text" class="form-control" id="customer_ph_no" aria-describedby="customer_ph_no_Help" placeholder="Enter customer phone no.">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="payment_id">Payment Type</label>
                                    <select class="form-control" id="payment_id" name="payment_id">
                                        <option selected>--- Choose a payment option ---</option>
                                        <?php
                                            $result = dbSelect(array('*'), 'payments');
                                            if (mysqli_num_rows($result) > 0) {
                                                while($row = mysqli_fetch_assoc($result)) {
                                        ?>
                                            <option value="<?php echo $row['payment_id']; ?>">
                                                <?php echo $row['payment_method']; ?>
                                            </option>
                                        <?php
                                                }
                                            }
                                        ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="paid">Paid :</label>
                                    <input type="radio" class="btn-check" name="paid" id="option1" autocomplete="off" value="1" checked>
                                    <label class="btn btn-sm btn-outline-primary" for="option1">Yes</label> | 
                                    <input type="radio" class="btn-check" name="paid" id="option2" autocomplete="off" value="0">
                                    <label class="btn btn-sm btn-outline-danger" for="option2">No</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="btn btn-primary" type="submit" name="lottery_insert" value="Submit">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <?php include "static/footer.php" ?>
        <?php include "static/bootstrap_core_jscript.php" ?>
        <?php include "static/core_plugin_jscript.php" ?>
        <?php include "static/custom_jscript_all.php" ?>
    </body>
</html>