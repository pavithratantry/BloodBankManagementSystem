<!DOCTYPE html>
<html>
<title>DONOR</title>
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
#button3{
  padding:25px;
  background-color:red;
  font-size:20px;
  border-radius:25px;
  font-weight:bolder;
  
}
#button4{
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
#button3:hover{
  background-color:grey;
}
#button4:hover{
  background-color:grey;
}
</style>
<body background="images/6.jpg" style="background-repeat:no-repeat">
 

<?php require 'web\nav2.php'?>

<br>
<br>
<br>


<center>
  <form action="donor.php" method="post">
  <button id="button1" type="submit" buttonaction="donor.php">NEW DONOR?</button>
  
  </form>
  <br>
<br>
<br>
<br>
<br><form action="updatedonor.php" method="post">
  <button id="button2" type="submit" formaction="updatedonor.php">UPDATE DONOR</button>
  </form>
  <br>
<br>
<br>
<br>
<br>
  <form action="displaydonor.php" method="post">
  <button id="button3" type="submit" formaction="displaydonor.php">DONOR LIST</button>
  </form>
  <br>
<br>
<br>
<br>
<br>
  <form action="deldonor.php" method="post">
  <button id="button4" type="submit" formaction="deldonor.php">DELETE DONOR</button>
  </form>

</center>
</body>
</html>