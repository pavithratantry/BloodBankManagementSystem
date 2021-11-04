<!DOCTYPE html>
<html>
<head>
  <title>Display all records from Database</title>
</head>
<body bgcolor =  "pink">
<center>
<h2>PATIENT DETAILS</h2>

<table border="5" bordercolor="red">
  <tr>
    <td>PATIENT ID</td>
    <td>PATIENT NAME</td>
    <td>PATIENT PHNO</td>
    <td>PATIENT ADDRESS</td>
    <td>HOSPITAL ADDRESS</td>
    <td>BLOOD BANK ID</td>
    <td>BLOOD BANK NAME</td>
  </tr>


<?php
//Report all errors except E_NTICE
error_reporting(E_ALL ^ E_NOTICE);
// Create connection
$conn = mysqli_connect("localhost", "root", "", "blood_bank_db");
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT P.PATIENT_ID, P.PATIENT_NAME, P.PATIENT_PHNO, P.PATIENT_ADDRESS, P.HOSPITAL_ADDRESS, B.BLOOD_BANK_ID, B1.NAME
FROM PATIENT P, BLOOD_DELIVERY B, BLOOD_BANK B1
WHERE P.PATIENT_ID=B.PATIENT_ID AND B.BLOOD_BANK_ID=B1.BLOOD_BANK_ID
ORDER BY P.PATIENT_ID";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
while($data = mysqli_fetch_array($result))
{
?>
  <tr>
    <td><?php echo $data['PATIENT_ID']; ?></td>
    <td><?php echo $data['PATIENT_NAME']; ?></td>
    <td><?php echo $data['PATIENT_PHNO']; ?></td>
    <td><?php echo $data['PATIENT_ADDRESS']; ?></td>
    <td><?php echo $data['HOSPITAL_ADDRESS']; ?></td>
    <td><?php echo $data['BLOOD_BANK_ID']; ?></td>
    <td><?php echo $data['NAME']; ?></td>
  </tr>	
<?php
}
}
?>
</table>

<?php mysqli_close($conn); // Close connection ?>
</center>
</body>
</html>



