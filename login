<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
        body {
           background-color:whitesmoke;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        q1 {
            color:greenyellow ;
            text-align: center;
            font-family: "B Titr";
            /* font-size: 20px; */
        }
        q2 {
            color:yellow ;
            text-align: right;
            font-family: "B Titr";
            /* font-size: 20px; */
        }
        q3 {
            color:red ;
            text-align:center;
            font-family: "B Titr";
            font-size: 35px;

        }
        q4 {
            color:magenta ;
            text-align:center;
            font-family: "B Titr";
            font-size: 35px;

        }
    </style>
</head>
<body> 
     
        <div  class="container-fluid "  dir="rtl">
            <nav class="navbar navbar-expand-sm  navbar-dark" style="background-color:rgb(49, 47, 47)">
                <ul class="navbar-nav">
                  <li class="nav-item active">
                      <img src="m6.jpg" class="d-block w-60" alt="mm1" width="100" height="85">
                  </li>
                  <li class="nav-item">
                  
                    <a class=" nav-link center text-danger mr-5 " style=" text-align: center;"><h1><q2>سامانه آزمون آنلاین دانشگاه دولتی شهرضا</q2></h1></a>  
                  </li>
                      <a class="nav-link text-align:right mr-4 " data-toggle="modal" href="#myModal1"><h4>عضویت</h4></a>    
                  </li>
                </ul>
              </nav>

              <?php if (isset($_GET['error'])): ?>
                <h5 style="text-align:right;" class="my-2 alert alert-danger" >
                  <?php echo $_GET['error']; ?>
                </h2>
              <?php endif; ?>

              <?php if (isset($_GET['info'])): ?>
                <h5 style="text-align:right;" class="my-2 alert alert-success" >
                  <?php echo $_GET['info']; ?>
                </h2>
              <?php endif; ?>
      <!-- The Modal -->
  <div class="modal fade" id="myModal1" dir="rtl">
    <div class="modal-dialog" dir="rtl">
      <div class="modal-content" dir="rtl">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">عضویت</h4>
          <button type="button" class="close" data-dismiss="modal"></button>
        </div>
        <!-- Modal body -->
        <div class="modal-body">
          <div class="col-10 p-5">
            <form method="post" action="post.php">
            <label for="a1" ><q3> نام کاربری</q3> </label>
            <input class="form-control "   type="text" name="form[user]" placeholder="نام کاربری"  id="a3"></br>
            <label for="a2"><q3>گذر واژه</q3> </label>
            <input   class="form-control" type="password" name="form[pass]"placeholder="کلمه عبور" id="a4">
            <br><br>
            <select class="form-control" name="form[access]">
              <option value="1" >professor</option>
              <option value="2" >student</option>
          </select><br><br>
        
          </div>
        
        <!-- Modal footer -->
        <div class="modal-footer ">
          <button type="submit" class="btn btn-danger mr-5" >ثبت</button>
          <button type="button" class="btn btn-danger mr-5" data-dismiss="modal">بستن</button>
        </div>
      </form>
      </div>
    </div>
  </div>
</div>    

<div  class="row">
<div class="col-sm-4">
<form style="background-color: rgb(255, 255, 255); border-radius: 50px; " class=" text-right  rounded p-4 mx-auto"  method="post" action="login.php">
    <div class="form-row">
        <div class="col-10 p-5">
            <img class="col-10 p-10 pb-0" src="m.jpg">
            </br>
    
            <label for="a1" ><q3> نام کاربری</q3> </label>
            <input class="form-control "   type="text" name="form[user]" placeholder="نام کاربری"  id="a1"></br>
            <label for="a2"><q3>گذر واژه</q3> </label>
            <input   class="form-control" type="password" name="form[pass]"placeholder="کلمه عبور" id="a2">
        
          </div>
    </div>
    <input class=" btn-lg btn-outline-Light col-10 mr-4 " type="submit" >
    </br>
    </br>
    <a href="#myModal" class="mr-5 text-danger font-weight-bolder" data-toggle="modal" onclick="alert">آیا رمز خود را فراموش کرده اید ؟ </a>



      <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">توجه</h4>
          <button type="button" class="close" data-dismiss="modal"></button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          درصورت فراموش کردن رمز عبور خود از واحد مربوطه پرسجو کنید .
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">بستن</button>
        </div>
        
      </div>
    </div>
  </div>
  

</form>
        </div>
        <div class="col-sm-6 " style="margin:20px 100px 0 0 ;" >
            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                  <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                  <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                  <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="m12.jpg" class="d-block w-100" alt="mm1" height="500">
                    <div class="carousel-caption d-none d-md-block">
                      <q4><p><h2>زمان را کنترل کنید</h2></p></q4>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img src="m9.jpg" class="d-block w-100" alt="mm2" height="500">
                    <div class="carousel-caption d-none d-md-block">
                      
                      <q4><p><h2>با برنامه کار کنید</h2></p></q4>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img src="m13.jpg" class="d-block w-100" alt="mm4"  height="500">
                    <div class="carousel-caption d-none d-md-block">
                      <q4><p><h2>از درس خواندن لذت ببرید </h2> </p></q4>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <img src="m11.jpg" class="d-block w-100" alt="m3" height="500">
                    <div class="carousel-caption d-none d-md-block">
                      <q4><p class="color=red"><h2>همیشه برای پیشرفت تلاش کنید</h2></p></q4>
                    </div>
                  </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>
        </div>
    </div>

</div>

<div  class="container mt-5"  dir="rtl">
    <div  class="row  ">


    </div>
</body>
</html>
