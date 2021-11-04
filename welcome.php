<!DOCTYPE html>
<html>
<title>Welcome</title>
<style>
#button1{
  padding:25px;
  background-color:red;
  font-size:20px;
  border-radius:25px;
  font-weight:bolder;
  
}
#button2{
  padding:25px;
  background-color:red;
  font-size:20px;
  border-radius:25px;
  font-weight:bolder;
  
}

#button1:hover{
  background-color:grey;
}
#button2:hover{
  background-color:grey;
}
</style>

<body background="images/5.jpg" style="background-repeat:no-repeat">
 

<?php require 'web\nav.php'?>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<center>
  <form action="donor_fe.php" method="post">
  <button type="submit" id="button1" buttonaction="donor_fe.php">DONOR</button>
  
  </form>
  <br>
<br>
<br>
<br>
<br>
  <form action="patient_fe.php" method="post">
  <button type="submit" id="button2" formaction="patient_fe.php">PATIENT</button>
  </form>

</center>
</body>
</html>