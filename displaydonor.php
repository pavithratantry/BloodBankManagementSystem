
<!DOCTYPE html>
<html>
<head>
<title>Display all records from Database</title>
</head>
<body bgcolor =  "pink">
<center>
<h2>DONOR DETAILS</h2>

<table border="5" bordercolor='red'>
  <tr>
    <td>DONOR ID</td>
    <td>DONOR NAME</td>
    <td>GENDER</td>
    <td>DOB</td>
    <td>PHONE NO</td>
    <td>ADDRESS</td>
    <td>WEIGHT</td>
    <td>BP</td>
    <td>IRON_COUNT</td>
    <td>DOCTOR NAME</td>
    <td>BLOOD TYPE</td>
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

$sql = "SELECT D.DONOR_ID, D.DONOR_NAME,D.GENDER,D.DONOR_DOB,D.DONOR_PHNO,D.DONOR_ADDRESS,D.WEIGHT,D.BP,D.IRON_COUNT,A.DOC_NAME,B.BLOOD_TYPE,C.NAME 
        FROM DONOR D, BLOOD B, DOCTOR A, BLOOD_BANK C 
        WHERE (D.DONOR_ID=B.DONOR_ID AND D.DOC_ID=A.DOC_ID AND B.BLOOD_BANK_ID=C.BLOOD_BANK_ID)
        GROUP BY D.DONOR_ID";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
while($data = mysqli_fetch_array($result))
{
?>
  <tr>
    <td><?php echo $data['DONOR_ID']; ?></td>
    <td><?php echo $data['DONOR_NAME']; ?></td>
    <td><?php echo $data['GENDER']; ?></td>
    <td><?php echo $data['DONOR_DOB']; ?></td>
    <td><?php echo $data['DONOR_PHNO']; ?></td>
    <td><?php echo $data['DONOR_ADDRESS']; ?></td>
    <td><?php echo $data['WEIGHT']; ?></td>
    <td><?php echo $data['BP']; ?></td>
    <td><?php echo $data['IRON_COUNT']; ?></td>
    <td><?php echo $data['DOC_NAME']; ?></td>
    <td><?php echo $data['BLOOD_TYPE']; ?></td>
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



