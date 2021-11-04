<!doctype html>
<html lang="en">
<title>
Delete Patient
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
  <center><br><br><br>
  <div class="main";>
  <h2 class="text-center"><b><font color="White">ENTER THE DETAILS OF THE PATIENT TO BE DELETED<b></h2>
  <br><br><br>
     <form action="delpatient.php" method="post">
     
     <label for="PATIENT_ID"><b><font color="White">PATIENT ID<b></label><br>                               
     <input type="int" id="PATIENT_ID" name="PATIENT_ID"><br><br>
     
     
     <label for="PATIENT_NAME"><b><font color="White">PATIENT NAME<b></label><br>
     <input type="text" id="PATIENT_NAME" name="PATIENT_NAME"><br><br>
     <br>
    <br>  
     <input id="button" type="submit" value="Submit" onclick="alert(' Deleted Successfully')">
     
     </form>
    <centre>
<?php
//Report all errors except E_NTICE
error_reporting(E_ALL ^ E_NOTICE);
error_reporting(0);
ini_set('display_errors',0);
    
if ($_SERVER['REQUEST_METHOD'] == 'POST'){
      
        $PATIENT_NAME = $_POST['PATIENT_NAME'];
        $PATIENT_ID = $_POST['PATIENT_ID'];


// Create connection
$conn = mysqli_connect("localhost", "root", "", "blood_bank_db");
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

// sql to delete a record
$sql = "DELETE FROM PATIENT WHERE PATIENT_ID= '$PATIENT_ID' AND PATIENT_NAME= '$PATIENT_NAME'";
$result = mysqli_query($conn, $sql);

mysqli_close($conn);
}

?>
</body>
</html>