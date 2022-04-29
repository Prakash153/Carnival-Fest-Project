<?php
$hostname="localhost";
$username="root";
$password="";
$dbname="carnival";
//creating connection
$conn=mysqli_connect($hostname,$username,$password,$dbname);

if(!$conn)
{
	die("connection failed" .mysql_connect_error());
}
if(isset($_POST['save']))
{
	$FullName=$_POST['f_name'];
	$Email=$_POST['email'];
	$Message=$_POST['message'];

	$sql_query= "INSERT INTO form(f_name,email,message) 
			values('$FullName','$Email','$Message')";

	if(mysqli_query($conn,$sql_query))
	{
		echo "FORM SUBMITTED SUCCESSFULLY";
	}
	else
	{
		echo "error:";
	}

	mysqli_close($conn);

}

?>