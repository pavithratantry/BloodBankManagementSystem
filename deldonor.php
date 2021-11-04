<!doctype html>
<html lang="en">
<title>
Delete Donor
</title>
<style type:"text/css">
*{
  margin:0;
  padding:0;
}
.main{
  background-color:rgb(0,0,0,0.3);
  width:500px;
  margin:auto;
}
form{
  padding:10px;
}
 #button{
  padding:10px;
  background-color:red;
  font-size:11px;
  border-radius:10px;
  font-weight:bolder;
}
 </style>

<body background="images/6.jpg" style="background-repeat:no-repeat">
  <center>
  <br><br><br>
  <h2 class="text-center"><b><font color="White">ENTER THE DETAILS OF THE DONOR TO BE DELETED<b></h2><br><br><br>
  <div class="main";>
     <form action="deldonor.php" method="post">
     <br><br><br><br>
     <label for="DONOR_ID"><b><font color="White">DONOR ID<b></label><br>                               
     <input type="int" id="DONOR_ID" name="DONOR_ID"><br><br>
     
     
     <label for="DONOR_NAME"><b><font color="White">DONOR NAME<b></label><br>
     <input type="text" id="DONOR_NAME" name="DONOR_NAME"><br><br>
     <br>
    <br>  
     <input id="button" type="submit" value="Submit" onclick="alert(' Record Deleted Successfully')">
     
     </form>
    </center>
<?php
//Report all errors except E_NTICE
error_reporting(E_ALL ^ E_NOTICE);
error_reporting(0);
ini_set('display_errors',0);
    
if ($_SERVER['REQUEST_METHOD'] == 'POST'){
      
        $DONOR_NAME = $_POST['DONOR_NAME'];
        $DONOR_ID = $_POST['DONOR_ID'];

// Create connection
$conn = mysqli_connect("localhost", "root", "", "blood_bank_db");
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

// sql to delete a record
$sql = "DELETE FROM Donor WHERE DONOR_ID= '$DONOR_ID' AND DONOR_NAME= '$DONOR_NAME'";
$result = mysqli_query($conn, $sql);

mysqli_close($conn);
}

?>
</body>
</html>

