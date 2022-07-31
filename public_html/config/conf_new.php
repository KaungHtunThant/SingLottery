<?php
	//session_start function
	session_start();
	//Database Controls
	//Start connection
	function dbConnect(){
		$servername = "localhost";
		$username = "root";
		$password = "";
		$db = "lottery";
		$conn = mysqli_connect($servername, $username, $password, $db);
		if ($conn->connect_error) {
	        die("Connection failed: " . $conn->connect_error);
		}
		else{
			return $conn;
		}
	}

	//Select $cols from $table
	function dbSelect($cols, $table){
		$conn = dbConnect();
		$sql = 'SELECT ';
		for ($i=0; $i <= count($cols)-1; $i++) {
			$sql = $sql.$cols[$i];
			if ($i != count($cols)-1){
				$sql = $sql.', ';
			}
		}
		$sql = $sql.' FROM '.$table.';';
		if (!$conn -> query($sql)) {
			echo '<script type="text/javascript">console.log('.$sql.');</script>';
		}
		$result = mysqli_query($conn, $sql);
		mysqli_close($conn);
		return $result;
	}

	//Page button functions
	//Login
	if(isset($_POST['login'])) {
        login();
        
    }

	function login(){
		$user = htmlspecialchars($_POST['user']);
		$pw = htmlspecialchars($_POST['password']);
		$conn = dbConnect();
		$sql = 'SELECT * FROM users WHERE username="'.$user.'" OR user_email="'.$user.'";';
		if (!$conn -> query($sql)) {
  			echo '<script type="text/javascript">console.log('.$sql.');</script>';
		}
		else{
			$result = mysqli_query($conn, $sql);
		}
		if (mysqli_num_rows($result) > 0){
			$row = mysqli_fetch_assoc($result);
			if($pw == $row["password"]){
				$_SESSION['user_id'] = $row["user_id"];
				$_SESSION['username'] = $row["username"];
				_goto('');
			}
		}
		mysqli_close($conn);
	}

	//Lottery_Insert
	if(isset($_POST['lottery_insert'])) {
        lottery_insert();
    }

	function lottery_insert(){
		$lottery_no = htmlspecialchars($_POST['lottery_no']);
		$batch_id = htmlspecialchars($_POST['batch_id']);
		$customer_name = htmlspecialchars($_POST['customer_name']);
		$customer_ph_no = htmlspecialchars($_POST['customer_ph_no']);
		$payment_id = htmlspecialchars($_POST['payment_id']);
		$paid = htmlspecialchars($_POST['paid']);
		$conn = dbConnect();
		$sql = 'insert into lotteries(lottery_no, batch_id, user_id, customer_name, customer_ph_no, payment_id, paid) values('.$lottery_no.', '.$batch_id.', '.$user_id.', '.$customer_name.', '.$customer_ph_no.', '.$payment_id.', '.$paid.')';
		// echo '<script type="text/javascript">console.log('.$sql.');</script>';
		if (!$conn -> query($sql)) {
  			echo '<script type="text/javascript">console.log('.$sql.');</script>';
		}
		else{
			$result = mysqli_query($conn, $sql);
		}
		// if (mysqli_query($conn, $sql)) {
		// 	_goto('LotteryForm_template.php');
		// } else {
		// 	echo '<script type="text/javascript">console.log('.$sql.');</script>';
		// }
		mysqli_close($conn);
	}

	//Other functions
	function _goto($page){
		header('Location: /SingLottery/public_html/'.$page);
		exit;
	}
?>