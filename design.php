<?php
include('connection.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DropDawn Select</title>
    <link rel="stylesheet" href="assets\bootstrap4\css/bootstrap.min.css">
    <link rel="stylesheet" href="assets\font-awesome-4.7.0\css/font-awesome.min.css">
    <link rel="stylesheet" href="mycss.css">
    <script src="assets/jquery-3.3.1.min.js"></script>
    <script src="assets\bootstrap4\js/bootstrap.min.js"></script>
    <script src="style\js/jquery.min.js"></script>
    <style>
       
    </style>
</head>
<body>
   <div class="container">
   <div class="row">
   <div class="col-sm-12">
   <nav class="navbar navbar-expand-lg navbar-light ">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler mytoggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
  <span class="navbar-toggler-icon" ></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown link
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
    </ul>
  </div>
</nav>
   </div>
</div>
    <div class="row">
    <div class="col-sm-12 text-center">
        <h3>Dependent DropDawn Select</h3>
    </div>
    </div>
        <div class="row">
        <div class="col-sm-3">
            
        </div>
        <div class="col-sm-6">
            <label>Country</label>
            <select name="country" id="country" class="country form-control">
                <option selected="selected">Select Country</option>
                <?php
                    $sql= " SELECT * FROM countries_tb ORDER BY country_name";
                    $res= mysqli_query($connect,$sql);
                    while($row= mysqli_fetch_assoc($res)){
                        ?>
                        <option value="<?php  echo $row['country_id']; ?>"><?php echo $row['country_name']; ?></option>
                        <?php
                    }
                ?>
                
            </select>
            <br>
            <label >Province</label>
            <select name="province" id="province" class="province form-control">
                <option selected="selected">Select Province</option>
            </select>
            <br>
            <label >District</label>
            <select name="district" id="district" class="district form-control">
                <option selected="selected">Select Province</option>
            </select>
        </div>
        <div class="col-sm-3"></div>
    </div>
   
   </div> 
   <script>
    $(document).ready(function(){
        $(".country").change(function(){
            var country_id= $(this).val();
            $.ajax({
                url:"province.php",
                method:"POST",
                data:{country_id:country_id},
                success:function(data){
                    $(".province").html(data);
                }

            });

        });

        $(".province").change(function(){
            var province_id= $(this).val();
            var country_id= $(".country").val();
            $.ajax({
                url:"district.php",
                method:"POST",
                data:{country_id:country_id, province_id:province_id},
                success:function(data){
                    $(".district").html(data);
                }

            });

        });


    });
   </script>
</body>
</html>