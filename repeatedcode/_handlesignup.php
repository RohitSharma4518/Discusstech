<?php

if($_SERVER['REQUEST_METHOD'] == "POST"){
    include("_dbconnection.php");
    $username = $_POST['email'];
    $password = $_POST['password'];
    $cpassword = $_POST['cpassword'];

    //This Script is to check wheather the user Already Exists or not
    $exist_user_sql = "SELECT * FROM 'users' WHERE username='$username'";
    $result = mysqli_query($connection, $exist_user_sql);
    $num = mysqli_num_rows($result);
    echo $num;
    if($num > 0){
        $show_Exist_error = "The Username Already exists";
    }

    //This Script is to INSERT the user details in the database
    else{
        //This Script is to check wheather the passwords match or not
        //If password matches then insert the user in the database
        if($password==$cpassword){
            $hashedpass = password_hash($password, PASSWORD_DEFAULT);
            $sql="INSERT INTO `users` (`username`, `userpass`, `timestamp`) VALUES ('$username', '$hashedpass', current_timestamp())";
            $result = mysqli_query($connection, $sql);
            header("Location: /discusstech/index.php?signupsuccess=true");
            exit();
        }
        else{
            $show_pass_error = "Passwords Does not Match";
            header("Location: /discusstech/index.php?signupsuccess=false");

        }
    }
    header("Location: /discusstech/index.php?signupsuccess=false&error='. $show_Exist_error .'");

}
?>