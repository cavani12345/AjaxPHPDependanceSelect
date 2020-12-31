<?php
include('connection.php');

if(isset($_POST["country_id"])){
    $country_id= $_POST["country_id"];

    $sql= "SELECT * FROM province_tb WHERE country_id='$country_id' ORDER BY province_name ";
    $res= mysqli_query($connect,$sql);
    while($row= mysqli_fetch_assoc($res)){
    ?>
        <select name="province" id="province" class="form-control">
        <option value=" <?php echo $row['province_id']; ?>"><?php echo $row['province_name']; ?></option>
    </select>
    <?php
    }

}
?>