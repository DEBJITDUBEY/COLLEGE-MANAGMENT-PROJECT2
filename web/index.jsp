<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
     
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>    
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>      
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
        <link rel="stylesheet" type="text/css" href="fonts.googleapis.com/css?family=Lato:400,900">
        <link rel="stylesheet" type="text/css" href="netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">



    </head>
    <body>
        <div class="well"style="height: 40px;background-color: orange">
            <div class="row">
                <div class="col-sm-10">
                    <p id="demo" style="color: white"></p>
                    <script>
                        var d = new Date();
                        document.getElementById("demo").innerHTML = d;
                    </script>
                </div>
                <div class="col-sm-2">

                    <p >
                        <a href="admin.html" style="color: white">admin</a>

                    </p>
                </div>
            </div>
        </div>
        <div class="well" style="border-color: blue;background-color: green">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4" style="color: white;font-size: 14px">
                    BENGAL COLLEGE OF ENGINNERING AND TECHNOILOGY


                </div>
                <div class="col-sm-4"></div>
            </div>


        </div>
        <div class="well" style="height: 80px;border-color: red;background-color:#152a4c ;margin-top: 1px" >
            <h2 style="color: white;background-color: #152a4c">
                <marquee>Welcome to online attendence managment system</marquee>
            </h2>
        </div>
        <div class="well" style="background-color: #0b1a33" >
            <div class="row">
                <div class="col-sm-8" style="border-color: blue">

                    <div id="myCarousel" class="carousel slide" data-ride="carousel"data-interval="500" >

                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>


                        <div class="carousel-inner" >
                            <div class="item active" >
                                <img src="image\bcet1.jpg"style="width: 1400px;height:500px" alt="Chicago">
                            </div>

                            <div class="item">
                                <img src="image\bcet1.jpg"style="width: 1400px;height: 500px" alt="Chicago">
                            </div>

                            <div class="item">
                                <img src="image\bcet1.jpg" style="width: 1400px;height: 500px"alt="New York">
                            </div>
                        </div>


                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>


                </div>
                <div class="col-sm-4" >
                    <div class="well"style="border-color: black;height: 600px;background-color: #302099s" >
                        <div class="container-fluid " style="background-color:orange" >
                            <center><img src="image\studentlogin.png" style="height: 200px;background-color: orange">  </center>
                            <
                            <form  method="post" action="login.jsp?roll=<% out.print((String)session.getAttribute("uroll")); %>" style="background-color: #010519">

                                <h4 style="color: white">
                                    <label> Email:</label>
                                    <input name="umail1" type="email"   placeholder="Enter email" name="" class="form-control" >
                                </h4>


                                <h4 style="color: white">
                                    <label>Password:</label>
                                    <input name="upass1" type="password"  placeholder="Enter password" name="" class="form-control">
                                </h4>

                                <h4 style="color: white">
                                    <label>COLLEGE ROLL NO:</label>
                                    <input name="uroll1" type="text"  placeholder="Enter college roll number" name="" class="form-control">
                                </h4>

                                <button type="submit" class="btn btn-primary" class="form-control" style="width: 345px;margin-top: 20px">log in</button>
                            </form>
                            <div class="well" style="height: 60px;background-color:#010519 ;margin-top: 20px">
                                <div class="row">
                                    <div class="col-sm-6" style="color: white">
                                        <p style="color: white"><a href="registration.html">New user?</a></p>

                                    </div>
                                    <div class="col-sm-6">
                                        <p><a href="https://www.w3schools.com/html/">Forget password?</a></p>
                                    </div>
                                </div>

                            </div>



                        </div>


                    </div>
                </div>
            </div>
        </div>

    </body>
</html>