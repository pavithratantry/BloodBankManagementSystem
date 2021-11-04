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
     <form action="donor.php" method="post">
     
     <label for="DONOR_NAME"><b><font color="White">NAME<b></label><br>                               
     <input type="text" id="DONOR_NAME" name="DONOR_NAME"><br><br>
     
     
     <label for="DONOR_PHNO"><b><font color="White">PHONE NO<b></label><br>
     <input type="bigint" id="DONOR_PHNO" name="DONOR_PHNO"><br><br>
     
     <label for="DONOR_ADDRESS"><b><font color="White">ADDRESS<b></label><br>
     <input type="text" id="DONOR_ADDRESS" name="DONOR_ADDRESS"><br><br>
     
     <label for="DONOR_DOB"><b><font color="White">DATE OF BIRTH<b></label><br>
     <input type="date" id="DONOR_DOB" name="DONOR_DOB"><br><br>
     
     <label for="GENDER"><b><font color="White">CHOOSE GENDER<b></label><br>

    <select name="GENDER" id="GENDER">
      <option value="--">--</option>
      <option value="M">M - MALE</option>
      <option value="F">F - FEMALE</option>
      <option value="O">OTH - OTHERS</option>
    </select><br><br>     

     <label for="WEIGHT"><b><font color="White">WEIGHT<b></label><br>
     <input type="int" id="WEIGHT" name="WEIGHT"><br><br>

     <label for="BP"><b><font color="White">BLOOD PRESSURE<b></label><br>
     <input type="text" id="BP" name="BP"><br><br>
     
     <label for="IRON_COUNT"><b><font color="White">IRON COUNT<b></label><br>
     <input type="int" id="IRON_COUNT" name="IRON_COUNT"><br><br>
         
     <label for="BLOOD_TYPE"><b><font color="White">CHOOSE BLOOD GROUP<b></label><br>
    <select name="BLOOD_TYPE" id="blood_type">
    <option value="--">--</option>
    <option value="A+">A+</option>
    <option value="A-">A-</option>
    <option value="B+">B+</option>
    <option value="B-">B-</option>
    <option value="O+">O+</option>
    <option value="O-">O-</option>
    <option value="AB+">AB+</option>
    <option value="AB-">AB-</option>
    </select><br><br>
     
     <label for="DOC_ID"><b><font color="White">DOCTOR'S NAME<b></label><br>
     <select name="DOC_ID" id="DOC_ID">
     <option value="--">--</option>
    <option value="1">Dr Amish</option>
    <option value="2">Dr Ram</option>
    <option value="3">Dr Varsha</option>
    <option value="4">Dr Alok</option>
    <option value="5">Dr Smitha</option>
    <option value="6">Dr Ananth</option>
    <option value="7">Dr Yash</option>
    <option value="8">Dr Prasad</option>
    <option value="9">Dr Shobha</option>
    <option value="10">Dr Geetha</option>
    </select><br><br>
    
     
     <label for="BLOOD_BANK_ID"><b><font color="White">BLOOD BANK NAME<b></label><br>
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
      
        $DONOR_NAME = $_POST['DONOR_NAME'];
        $DONOR_ADDRESS = $_POST['DONOR_ADDRESS'];
        $DONOR_PHNO = $_POST['DONOR_PHNO'];
        $DONOR_DOB = $_POST['DONOR_DOB'];
        $GENDER = $_POST['GENDER'];
        $WEIGHT = $_POST['WEIGHT'];
        $BP = $_POST['BP'];
        $IRON_COUNT = $_POST['IRON_COUNT'];
        $BLOOD_TYPE = $_POST['BLOOD_TYPE'];
        $DOC_ID=$_POST['DOC_ID'];
        $last_id=$_POST['DONOR_ID'];
        $BLOOD_BANK_ID=$_POST['BLOOD_BANK_ID'];

      // Create a connection
      $conn = mysqli_connect("localhost", "root", "", "blood_bank_db");
      // Die if connection was not successful
      if (!$conn){
          die("Sorry we failed to connect: ". mysqli_connect_error());
      }
      else{ 
               
        $sql = "INSERT INTO `donor` (`DONOR_ID`,`DONOR_NAME`, `DONOR_ADDRESS`, `DONOR_PHNO`, `DONOR_DOB`, `GENDER`, `WEIGHT`, `BP`, `IRON_COUNT`,`DOC_ID`) 
        VALUES ('NULL','$DONOR_NAME', '$DONOR_ADDRESS', '$DONOR_PHNO', '$DONOR_DOB', '$GENDER', '$WEIGHT', '$BP', '$IRON_COUNT','$DOC_ID')";
        $result = mysqli_query($conn, $sql);
       
        if ($result === TRUE) {
          $last_id = $conn->insert_id;
          $sql1="INSERT INTO `blood` (`BLOOD_TYPE`,`DONOR_ID`, `BLOOD_BANK_ID`) 
          VALUES ('$BLOOD_TYPE','$last_id', '$BLOOD_BANK_ID')";
          $result1 = mysqli_query($conn, $sql1);
        }
        $conn->close();
      }
    }
    
?>
  </body>
</html>
