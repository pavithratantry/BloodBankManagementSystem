<!DOCTYPE html>
<html>
<title>PATIENT</title>
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
  <form action="blood_count.php" method="post">
  <button id="button1" type="submit" buttonaction="blood_count.php">NEED BLOOD?</button>
  
  </form>
  <br>
<br>
<br>
<br>
<br>
<form action="search_donor.php" method="post">
  <button id="button2" type="submit" formaction="search_donor.php">SEARCH DONOR</button>
  </form>
  <br>
<br>
<br>
<br>
<br>
  <form action="displaypatient.php" method="post">
  <button id="button3" type="submit" formaction="displaypatient.php">PATIENT LIST</button>
  </form>
  <br>
<br>
<br>
<br>
<br>
  <form action="delpatient.php" method="post">
  <button id="button4" type="submit" formaction="delpatient.php">DELETE PATIENT</button>
  </form>





</center>
</body>
</html>