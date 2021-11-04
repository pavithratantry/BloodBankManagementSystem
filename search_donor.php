<!doctype html>
<html lang="en">
<title>
Search Donor
</title>
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
  <h2 class="text-center"><b><font color="White">ENTER THE REQUIRED BLOOD GROUP<b></h2>
     <form action="search_donor.php" method="post">
     <br><br><br><br>
     <label for="BLOOD_TYPE"><b><font color="White">BLOOD TYPE<b></label><br>                               
     <input type="text" id="BLOOD_TYPE" name="BLOOD_TYPE"><br><br>
     
     <br>
    <br>  
     <input id="button" type="submit" value="Submit">
     
     </form>
    
<?php
//Report all errors except E_NTICE
error_reporting(E_ALL ^ E_NOTICE);
error_reporting(0);
ini_set('display_errors',0);
    
if ($_SERVER['REQUEST_METHOD'] == 'POST'){
      
        $BLOOD_TYPE = $_POST['BLOOD_TYPE'];
        $DONOR_ID = $_POST['DONOR_ID'];

// Create connection
$conn = mysqli_connect("localhost", "root", "", "blood_bank_db");
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

// sql to delete a record
$sql = "SELECT D.DONOR_NAME, D.DONOR_PHNO, B.BLOOD_TYPE
FROM DONOR D,BLOOD B
WHERE D.DONOR_ID=B.DONOR_ID AND B.BLOOD_TYPE='$BLOOD_TYPE'";
$result = mysqli_query($conn, $sql);
{   ?>
<br><br><br>
    <table border="2" bordercolor='red'>
  <tr>
    <td>DONOR NAME</td>
    <td>DONOR PHNO</td>
    <td>BLOOD TYPE</td>
    
  </tr>
  <?php
    while($row=mysqli_fetch_array($result))
    {  
    
    ?>
    

  <tr>
   
    <td><?php echo $row['DONOR_NAME']; ?></td>
    <td><?php echo $row['DONOR_PHNO']; ?></td>
    <td><?php echo $row['BLOOD_TYPE']; ?></td>
   
  </tr>	
<?php
}
}
?>
</table>
    
<?php

mysqli_close($conn);
}

?>
</center>
</body>
</html>