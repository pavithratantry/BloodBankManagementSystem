<!doctype html>
<html lang="en">
<head>
  <title>Blood</title>
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
<body background="images/4.jpg" style="background-repeat:no-repeat">
<center>
<h1 class="text-center"><b>ENTER THE FOLLOWING DETAILS<b></h1>
     <form action="/project/blood_count1.php" method="post">
     <br><br><br>
     <label for="B_TYPE"><b>BLOOD TYPE<b></label><br>
     <input type="text" id="B_TYPE" name="B_TYPE"><br><br>
     
     <label for="B_BANK_ID"><b>BLOOD BANK NAME<b></label><br>
     <select name="B_BANK_ID" id="B_BANK_ID">
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

     <input id="button" type="submit" value="Submit">
     <br>
     <br>
     <br>
     </form>

</center>
</body>
</html>