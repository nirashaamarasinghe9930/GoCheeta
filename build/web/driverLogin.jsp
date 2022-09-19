<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Driver Login Page</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <style>
            body{
                background-image: url(./imgFolder/R1.jpg);
                background-size: cover;
            }
            form{
                margin-top: 12%;
            }
            label{
                font-size: 20px;
                font-weight: bold;
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
                <div class="col-3 bg-dark m-4 p-4 text-white rounded-3">
                    <h1 class="text-center">Driver Login</h1>
                    <center><form action="driverLogin" method="post">
                            <label>Driver Name: </label><br/>
                            <input required type="text" id="name" placeholder="Enter Username" name="name"><br/>

                            <label>Password: </label><br/>
                            <input required id="psw" type="password" placeholder="Enter Password" name="psw"><br/>
                            <br>
                            <input type="submit" value="LOGIN">
                        </form></center>
                </div>
            </div>
        </div>
    </body>
</html>