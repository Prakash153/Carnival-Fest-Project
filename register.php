<?php
/////////////connection
// $databaseHost = "localhost:8080";//or localhost
// $databaseUsername = "root"; // root by default for localhost 
// $databasePassword = "";  // by defualt empty for localhost
// $databaseName = "carnival"; // your db_name

 $conn= mysqli_connect('localhost', 'root', "","carnival");
if($conn){
    echo"connection success";
}
if(!$conn){
    die('connect_error('.mysqli_connect_errno().')'.mysqli_connect_error());

}
/////////////////////


    $uid="";
    $fname=$_POST['fname'];
    $lname=$_POST['lname'];
    $gender=$_POST['gender'];
    $dob=$_POST['dob'];
    $address=$_POST['address'];
    $skill=$_POST['skill'];
    $about=$_POST['about'];
    $hotel_room = (isset($_POST['hotel_room'])) ? 1 : 0;
    $food= (isset($_POST['food'])) ? 1 : 0;
    $vehicle = (isset($_POST['vehicle'])) ? 1 : 0;
    $consent=$_POST['consent'];
    $username=$_POST['username'];
    $passwd=$_POST['passwd'];
    $picpname=$_FILES['pic']['name'];
    $pictmpname=$_FILES['pic']['tmp_name'];
    $clippname=$_FILES['clip']['name'];
    $cliptmpname=$_FILES['clip']['tmp_name'];
    $email=$_POST['email'];
    
    
    move_uploaded_file($pictmpname,"pics/".$picpname);
    move_uploaded_file($cliptmpname,"clips/".$clippname);
    if(!empty($fname)|| !empty($lname) || !empty($gender) || !empty($dob) || !empty($email) || !empty($fname)){

    

            $insert ="INSERT INTO audition_form(fname, lname, gender, dob, email, address, skill, hotel_room, vehicle, food, consent, username, passwd, picpname, clippname, uid,about) VALUES ('$fname','$lname','$gender','$dob','$email','$address','$skill',$hotel_room,$vehicle,$food,$consent,'$username','$passwd','$picpname','$clippname','$uid','$about') ";
            $data=mysqli_query($conn,$insert);
            if ($data) {
                echo "New record created successfully";
                } 
            else {
                    
                    echo "Error: " . "<br>" . $conn->error;
                }
                  
             $conn->close();
            
        }
//  }
 
    else{
        echo" ALL fields are required";
        die();
        }


?>
