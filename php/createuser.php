<?php
$servername = "54.84.4.193";
$username = "school";
$password = "school";
$useremail = $_POST['user_email'];
$userpass = $_POST['user_password'];

$conn = mysqli_connect($servername, $username, $password, "school");

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully</br>";

// Using prepared statement to prevent SQL injection
$sql = "INSERT INTO school.user_info (user_email, user_password) VALUES (?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $useremail, $userpass);

if ($stmt->execute()) {
    echo "<br>New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$stmt->close();

echo "<h1> Existing Users: </h1></br>";
$sql1 = "SELECT * FROM school.user_info";
$result = $conn->query($sql1);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo $row["user_email"] . $row["user_password"] . "<br>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>

