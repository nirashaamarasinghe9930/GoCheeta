<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTER Page</title>
        <title>Admin Login Page</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


        <style>
            body{
                background-image: url(./imgFolder/toyota-premio.jpg);
                background-size: cover;
            }
            .registercontainer {
                width: 100%;
                height: auto;
                text-align: center;
            }
            label{
                font-size: 20px;
                font-family: sans-serif;
            }
            input{
                font-size: 18px;
            }
        </style>
    </head>
    <body>
        <div class=" p-4 text-dark bg-opacity-50">
            <div class="row justify-content-center">
                <div class="col-3 bg-dark m-3 p-4 text-white rounded-3">
                    <div class="registercontainer">
                        <center><form action="register" onsubmit="return check()" method="post">
                                <label>Full Name: </label><br/>
                                <input required type="text" id="fname" placeholder="Enter FullName" name="fname"><br/>
                                <label>User Name: </label><br/>
                                <input required type="text" id="name" placeholder="Enter Username" name="name"><br/>
                                <label>Email: </label><br/>
                                <input required type="email" id="email" placeholder="Enter Email" name="email"><br/>
                                <label>Password: </label><br/>
                                <input id="psw" required minlength="6" type="password" placeholder="Enter Password" name="psw"><br/>
                                <span style="display: none;">Enter minimum 6 characters</span>
                                <label>Confirm Password: </label><br/>
                                <input id="cnfpsw"  required minlength="6" type="password" placeholder="Confirm Password" name="cnfpsw"><br/>
                                <span style="display: none;">Both Passwords should be match</span><br/><br/>
                                <input type="submit" value="REGISTER" style="background-color: red; color: white;">
                            </form></center>
                    </div>
                </div>
            </div>
        </div>

        <script>
            function check() {
                var pass = document.getElementById("psw");
                var conPass = document.getElementById("cnfpsw");

                if (pass.value !== conPass.value) {
                    alert("\nPassword did not match: Please try again...");
                    return false;

                } else {
                    return true;
                }
            }
        </script>
    </body>
</html>
