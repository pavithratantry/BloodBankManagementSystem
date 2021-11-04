<!doctype html>
<html lang="en">
<title>
PATIENT
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
  <?php require 'web\nav3.php'?>
  <center>
  <div class="main";>
  <h2 class="text-center"><b><font color="White">ENTER THE FOLLOWING PATIENT DETAILS<b></h2>
     <form action="patient.php" method="post">
     <br><br><br>
     <label for="PATIENT_NAME"><b><font color="White">NAME<b></label><br>                               
     <input type="text" id="PATIENT_NAME" name="PATIENT_NAME"><br><br>
     
     
     <label for="PATIENT_PHNO"><b><font color="White">PHONE NO<b></label><br>
     <input type="bigint" id="PATIENT_PHNO" name="PATIENT_PHNO"><br><br>
     
     <label for="PATIENT_ADDRESS"><b><font color="White">PATIENT ADDRESS<b></label><br>
     <input type="text" id="PATIENT_ADDRESS" name="PATIENT_ADDRESS"><br><br>
     
     <label for="HOSPITAL_ADDRESS"><b><font color="White">HOSPITAL ADDRESS<b></label><br>
     <input type="text" id="HOSPITAL_ADDRESS" name="HOSPITAL_ADDRESS"><br><br>

     <label for="BLOOD_BANK_ID"><b><font color="White">BLOOD_BANK_NAME<b></label><br>
     <select name="BLOOD_BANK_ID" id="BLOOD_BANK_ID">
     <option value="--">--</option>
    <option value="111">LIONS BLOOD BANK</option>
    <option value="222">JAYANAGAR BLOOD BANK</option>
    <option value="333">Red Cross Blood Bank</option>
    <option value="444">Rashtrotthana Blood </option>
    <option value="555">KR Hospital Blood Bank</option>
    <option value="666">KIMS</option>
    <option value="777">Victoria Hospital Blood Bank</option>
    <option value="888">Swamy Vivekananda Blood Bank</option>
    <option value="999">Malleshwaram Blood Bank</option>
    </select><br><br>
  
    <br>
    <br>  
     <input id="button" type="submit" value="Submit" onclick="alert('Submitted Successfully')">
     
     </form>
    <center>
<?php
//Report all errors except E_NTICE
error_reporting(E_ALL ^ E_NOTICE);
error_reporting(0);
ini_set('display_errors',0);
    
if ($_SERVER['REQUEST_METHOD'] == 'POST'){
      
        $PATIENT_NAME = $_POST['PATIENT_NAME'];
        $PATIENT_ADDRESS = $_POST['PATIENT_ADDRESS'];
        $PATIENT_PHNO = $_POST['PATIENT_PHNO'];
        $HOSPITAL_ADDRESS = $_POST['HOSPITAL_ADDRESS'];
        $last_id=$_POST['DONOR_ID'];
        $BLOOD_BANK_ID=$_POST['BLOOD_BANK_ID'];

      // Create a connection
      $conn = mysqli_connect("localhost", "root", "", "blood_bank_db");
      // Die if connection was not successful
      if (!$conn){
          die("Sorry we failed to connect: ". mysqli_connect_error());
      }
      else{ 
        // Submit these to a database
        // Sql query to be executed 
        
        $sql = "INSERT INTO `patient` (`PATIENT_ID`,`PATIENT_NAME`, `PATIENT_PHNO`, `PATIENT_ADDRESS`,`HOSPITAL_ADDRESS`) 
        VALUES ('NULL','$PATIENT_NAME', '$PATIENT_PHNO', '$PATIENT_ADDRESS', '$HOSPITAL_ADDRESS')";
        $result = mysqli_query($conn, $sql);
       
        
        if ($result === TRUE) {
          $last_id = $conn->insert_id;
          $sql1="INSERT INTO `blood_delivery` (`BLOOD_BANK_ID`,`PATIENT_ID`) 
          VALUES ('$BLOOD_BANK_ID','$last_id')";
          $result1 = mysqli_query($conn, $sql1);
      
        }
        
        
        $conn->close();
      }
    }
    
?>
  </body>
</html>
