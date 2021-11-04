<!DOCTYPE html>
<html>
<head>
  <title>Need Blood</title>
</head>
<style>
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
<?php

// Create connection
$conn = mysqli_connect("localhost", "root", "", "blood_bank_db");
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
if ($_SERVER['REQUEST_METHOD'] == 'POST'){
      
      
  $B_TYPE = $_POST['B_TYPE'];
  $B_BANK_ID = $_POST['B_BANK_ID'];
 
  
$sql ="SELECT B.BLOOD_TYPE,COUNT(BLOOD_TYPE)
FROM BLOOD B
WHERE BLOOD_TYPE = '$B_TYPE'
AND EXISTS(SELECT D.BLOOD_BANK_ID
    	   FROM BLOOD_BANK D
           WHERE BLOOD_BANK_ID = '$B_BANK_ID' AND B.BLOOD_BANK_ID = D.BLOOD_BANK_ID)";

$result = mysqli_query($conn, $sql);
{
  while($row=mysqli_fetch_row($result))
  {  
  
      //print_r($row);
  
  if($row[0]==$B_TYPE)
  {
    echo '<span style="color:#02075d;font-size:30px;text-align:center;">Blood Type available in specified blood bank</span>';?>
    <br>
    <br>
    <form action="patient.php" method="get"><input id="button" type="submit" value="Proceed"></form>
    <?php
  }
  else{
    echo '<span style="color:#02075d;font-size:30px;text-align:center;">Sorry! Blood Type is not available in specified blood bank</span>';
  }
}
}
}
?>
</center>
</body>
</html>
    