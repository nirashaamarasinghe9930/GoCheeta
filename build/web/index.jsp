<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
  <head>
    <title>Main Page</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
        .container {
            width: 100%;
            height: 80px;

        }

        li {
            float: left;
            list-style: none;
            padding: 10px 10px 10px 10px;
        }

        li a {
            font-size: 20px;
            color: white;
            text-decoration: none;
        }

        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>

</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark py-3 text-white" style="color: white;">
        <a class="navbar-brand" href="#">
            <img src="images/logo2.jpg" alt="" width="60" height="48" class="d-inline-block align-text-top">

        </a>
        <a class="navbar-brand text-white" href="index.jsp">
            <h2 class="fw-bold">GoCheeta</h2>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse fs-5" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active" aria-current="page" href="login.jsp">Login</a>
                <a class="nav-link text-white" href="register.jsp">Sign up</a>
                <a class="nav-link text-white" href="">About Us</a>
            </div>
        </div>

    </nav>
    <main>
        <img src="images\A3.jpg" class="img-fluid" alt="Responsive image"
            width="100%" height="100%">
        </div>


        <div class="container">
            <div class="carousel-caption text-end">
                <h1>Welcome to GoCheeta</h1>
                <p>Your safety and comfort is our concern</p>

            </div>
        </div>


        <div class="container marketing">

            <div class="album py-1 bg-light">
                <div class="row py-lg-5">
                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                        <div class="col-md-4">
                            <img src="images\Doublecab.jpg"
                                class="rounded float-left" alt="img" width="360" height="240">



                            <h2>Double Cab</h2>
                            <p>Base Fare (for 2 Km) LKR. 140</p>

                            <p>Waiting Fare Per Minute LKR. 4</p>

                            <p>Per Kilometer LKR. 45</p>

                        </div>
                        <div class="col-md-4">
                            <img src="images\van.jpg "
                                class="rounded float-center" alt="img" width="360" height="240">

                            <h2>Van </h2>
                            <p>Base Fare (for 5 Km) LKR. 325</p>

                            <p>Waiting Fare Per Minute LKR. 5</p>

                            <p>Per Kilometer LKR. 55</p>


                        </div>
                        <div class="col-md-4">
                            <img src="images\nano.jpg"
                                class="rounded float-left" alt="img" width="360" height="240">

                            <h2>Nano
                            </h2>
                            <p>Base Fare (for 2 Km) LKR. 140</p>

                            <p>Waiting Fare Per Minute LKR. 4</p>

                            <p>Per Kilometer LKR. 42</p>

                        </div>
                    </div>

                    <hr class="featurette-divider">

                    <div class="row featurette">
                        <div class="col-md-7">
                            <h2 class="featurette-heading">How GoCheeta
                                Works?
                                <span class="text-muted">
                                    <p>1.Easy Booking.</p>
                                </span>
                            </h2>
                            <p class="lead">Select the GoCheeta vehicle are availble in your area.</p>
                        </div>
                        <div class="col-md-5">
                            <img src="images\A1.jpg"
                                class="rounded float-left" alt="img" width="500" height="500">

                        </div>
                    </div>

                    <hr class="featurette-divider">

                    <div class="row featurette">
                        <div class="col-md-7 order-md-2">
                            <h2 class="featurette-heading">GoCheeta Cabs
                                Airport Transfers<span class="text-muted"></span></h2>
                            <p class="lead">Gocheeta Cabs offer the lowest rates in Airport Transfers Sri Lanka. From
                                Colombo to any destination in the island for travellers who arrive at Bandaranaike
                                International Airport</p>
                        </div>
                        <div class="col-md-5 order-md-1">
                            <div class="col-md-5">
                                <img src="images\A2.jpg"
                                    class="rounded float-left" alt="img" width="323" height="156">

                            </div>

                        </div>
                    </div>

                    <hr class="featurette-divider">

                    <div class="row featurette">
                        <div class="col-md-7">
                            <h2 class="featurette-heading">Budget <span class="text-muted"></span></h2>
                            <p class="lead">
                            <h6>Suzuki Alto/Tata Nano</h6>
                            <p>A small hatchback, air conditioned with capacity of 3 passengers ideal for short distance
                                trips.</p>


                            <h6>Suzuki WagonR</h6>
                            <p>A hatchback, air conditioned with capacity of 4 passengers ideal for short distance trips
                                with adequate luggage space.</p>

                            <h6> Toyota Prius/Axio</h6>
                            <p> A full size , air conditioned sedan with capacity of 4 passengers ideal for long
                                distance trips with plenty of luggage space.
                            </p>
                        </div>
                        <div class="col-md-5">
                            <div class="col-md-5">
                                <img src="images\a6.jpg"
                                    class="rounded float-left" alt="img" width="615" height="327">

                            </div>

                        </div>
                    </div>

                    <hr class="featurette-divider">


                </div>
                <div class="container">
                    <footer class="py-3 my-4">
                        <ul class="nav justify-content-center border-bottom pb-3 mb-3">
                            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
                            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
                            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
                            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
                            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About GOCheeta</a></li>
                        </ul>
                        <p class="text-center text-muted">© 2022 ICBT project, Inc</p>
                    </footer>
                </div>


    </main>

    <script src="/docs/5.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

</body>
</html>