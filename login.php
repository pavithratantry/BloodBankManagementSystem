<?php
$conn = mysqli_connect("localhost", "root", "", "blood_bank_db");
$login = false;
$showError = false;
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];


    $sql = "Select * from users where username='$username' and password='$password'";
    $result = mysqli_query($conn, $sql);
    $num = mysqli_num_rows($result);
    if ($num == 1) {
        $login = true;
        header("location: welcome.php");
    } else {
        $showError = "Invalid Credentials";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SIGNIN</title>


    <!-- Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">




</head>

<style>
    #button {
        padding: 15px;
        background-color: blue;
        font-size: 15px;
        border-radius: 10px;
        font-weight: bolder;

    }
</style>

<body background="images/1.jpeg" style="background-repeat:no-repeat">


    <?php
    if ($login) {
        echo ' <div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Success!</strong> You are logged in
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">×</span>
        </button>
    </div> ';
    }
    if ($showError) {
        echo ' <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>Error!</strong> ' . $showError . '
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">×</span>
        </button>
    </div> ';
    }
    ?>

    <section id="signin">
        <div class="container">
            <h1 class="text-center py-5 text-light">SIGN IN</h1>
            <form action="login.php" method="post">

                <div class="form-group mb-3 col-md-6 m-auto">
                    <div class="form-floating mb-3">
                        <input type="username" class="form-control" id="floatingEmail" placeholder="username" name="username" required>
                        <label for="floatingEmail">Username</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password" pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-])+$" title="At least one upper case letter, one lower case letter, one digit, one special character, Minimum eight in length" required>
                        <label for="floatingPassword">Password</label>
                    </div>
                </div>
                <div class="text-center py-2">
                    <button type="submit" class="btn btn-primary ">SignIn</button>
                </div>
            </form>
            <form action="signup.php">
                <div class="text-center text-light py-5">
                    <small>Don't have an account?</small>
                    <button type="submit" class="btn btn-primary">Sign Up</button>
                </div>
            </form>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>