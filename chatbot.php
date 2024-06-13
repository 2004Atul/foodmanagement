<?php
include('config/constants.php');

// Enable error reporting for debugging
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Database credentials
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "onlinefoodorder";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to get a response from the database
function getResponse($userInput, $conn) {
    // Convert user input to lowercase to make the chatbot case insensitive
    $userInput = strtolower($userInput);

    // Prepare and execute the SQL statement
    $stmt = $conn->prepare("SELECT response FROM responses WHERE ? LIKE CONCAT('%', keyword, '%') LIMIT 1");
    $stmt->bind_param("s", $userInput);
    $stmt->execute();
    $stmt->bind_result($response);
    $stmt->fetch();

    // Close the statement
    $stmt->close();

    // Return the response if found, otherwise return a default response
    return $response ? $response : 'Sorry, I did not understand that. Can you please rephrase?';
}

// Check if form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $userInput = $_POST['user_input'];
    $botResponse = getResponse($userInput, $conn);
}

// Close the database connection
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Important to make website responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Food Order System</title>

    <!-- Link our CSS file -->
    <link rel="stylesheet" href="css/style.css">
    <style>
        a { color: #4F9B68; }
        .chat-container {
            width: 100%;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9f;
        }
        .chat-box {
            border: 1px solid #ddd;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
        }
        .chat-box.bot {
            background-color: #e2f6e8;
        }
        .chat-box.user {
            background-color: #daf1ff;
            text-align: right;
        }
        .chat-input {
            width: calc(100% - 70px);
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
            font-size: 16px;
        }
        .chat-button {
            border: none;
            background-color: #4F9B68;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <!-- Navbar Section Starts Here -->
    <section class="navbar" style="background-color:#E2F6E8">
        <div class="container">
            <div class="logo">
                <a href="#" title="Logo">
                    <img src="images/ordersta.png" alt="Restaurant Logo" class="img-responsive">
                </a>
            </div>

            <div class="menu text-right">
                <ul>
                    <li><a href="<?php echo SITEURL; ?>">Home</a></li>
                    <li><a href="<?php echo SITEURL; ?>categories.php">Categories</a></li>
                    <li><a href="<?php echo SITEURL; ?>foods.php">Foods</a></li>
                    <li><a href="<?php echo SITEURL; ?>admin/login.php">Login</a></li>
                    <li><a href="<?php echo SITEURL; ?>chatbot.php">Chat with Us</a></li>
                </ul>
            </div>

            <div class="clearfix"></div>
        </div>
    </section>
    <!-- Navbar Section Ends Here -->

    <!-- Chatbot Section Starts Here -->
    <div class="chat-container">
        <h2>Chat with Us</h2>
        <form method="post">
            <?php if (isset($userInput)): ?>
                <div class="chat-box user"><?php echo htmlspecialchars($userInput); ?></div>
            <?php endif; ?>
            <?php if (isset($botResponse)): ?>
                <div class="chat-box bot"><?php echo htmlspecialchars($botResponse); ?></div>
            <?php endif; ?>
            <input type="text" id="user_input" name="user_input" class="chat-input" required>
            <button type="submit" class="chat-button">Send</button>
        </form>
    </div>
    <!-- Chatbot Section Ends Here -->
</body>
</html>
