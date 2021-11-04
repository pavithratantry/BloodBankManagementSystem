<!doctype html>
<html lang="en">
<title>
New Donor
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
  
  <h2 class="text-center"><b><font color="White">ENTER THE FOLLOWING DETAILS<b></h2><br>
  <div class="main";>
     <form action="updatedonor.php" method="post">
     
     <label for="DONOR_ID"><b><font color="White">ID<b></label><br>                               
     <input type="int" id="DONOR_ID" name="DONOR_ID"><br><br>
     
     <label for="DONOR_NAME"><b><font color="White">NAME<b></label><br>                               
     <input type="text" id="DONOR_NAME" name="DONOR_NAME"><br><br>
     
     
     <label for="DONOR_PHNO"><b><font color="White">PHONE NO<b></label><br>
     <input type="bigint" id="DONOR_PHNO" name="DONOR_PHNO"><br><br>
     
     <label for="DONOR_ADDRESS"><b><font color="White">ADDRESS<b></label><br>
     <input type="text" id="DONOR_ADDRESS" name="DONOR_ADDRESS"><br><br>
    
     <input id="button" type="submit" value="Submit" onclick="alert('Submitted Successfully')">
     </div>
     </form>
     
    </center>
<?php
//Report all errors except E_NTICE
error_reporting(E_ALL ^ E_NOTICE);
error_reporting(0);
ini_set('display_errors',0);
    
if ($_SERVER['REQUEST_METHOD'] == 'POST'){
        $DONOR_ID= $_POST['DONOR_ID'];
        $DONOR_NAME = $_POST['DONOR_NAME'];
        $DONOR_ADDRESS = $_POST['DONOR_ADDRESS'];
        $DONOR_PHNO = $_POST['DONOR_PHNO'];

      // Create a connection
      $conn = mysqli_connect("localhost", "root", "", "blood_bank_db");
      // Die if connection was not successful
      if (!$conn){
          die("Sorry we failed to connect: ". mysqli_connect_error());
      }
      else{        
        $sql = "UPDATE `donor` SET `DONOR_NAME`='$DONOR_NAME', `DONOR_ADDRESS`='$DONOR_ADDRESS', `DONOR_PHNO`='$DONOR_PHNO'        
         WHERE `DONOR_ID`='$DONOR_ID'"; 
        $result = mysqli_query($conn, $sql);
        $conn->close();
      }
    }
    
?>
  </body>
</html>
