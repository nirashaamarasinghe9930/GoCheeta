
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Driver Register PAGE</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <style>
            body{
                background-image: url(./imgFolder/R3.jpg);
                background-size: cover;
            }
            .registercontainer {
                width: 100%;
                height: auto;
                text-align: center;
            }
            form{
                margin-top: 7%;
            }
            label{
                font-size: 18px;
                color: silver;
                font-weight: bold;
            }
            input{
                font-size: 12px;
            }
        </style>
    </head>
    <body>
        <div class=" p-4 text-dark bg-opacity-50">
            <div class="row justify-content-center">
                <div class="col-3 bg-dark m-3 p-4 text-white rounded-3">
                    <div class="registercontainer">
                        <center><form action="registerDriver" method="post" enctype="multipart/form-data">
                                <label>Full Name: </label><br/>
                                <input required type="text" id="fname" placeholder="Enter FullName" name="fname"><br/>
                                <label>User Name: </label><br/>
                                <input required type="text" id="name" placeholder="Enter Username" name="name"><br/>
                                <label>Email: </label><br/>
                                <input required type="email" id="email" placeholder="Enter Email" name="email"><br/>
                                <label>Password: </label><br/>
                                <input required minlength="6" id="pass" type="password" placeholder="Enter Password" name="psw"><br/>

                                <label>Vehicle Type: </label><br/>
                                <input required type="text" id="vehicleType" placeholder="Enter Vehicle type" name="vehicleType"><br/>
                                <label>Mobile Number: </label><br/>
                                <input required type="text" id="mobileNumber" placeholder="Enter Mobile Number" name="mobileNumber"><br/>
                                <label>Branch: </label><br/>
                                <input required type="text" id="branch" placeholder="Enter Branch" name="branch"><br/><br/>
                                <input type="file" name="image" required><br/><br/>
                                <input type="submit" value="REGISTER">
                            </form></center>
                        <a href="adminHome.jsp" style="color: darkred;">ADMIN HOME</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
