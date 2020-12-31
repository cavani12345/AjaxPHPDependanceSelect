<?php
include('connection.php');
if(isset($_POST["country_id"]) && isset($_POST["province_id"])){
    $country_id= $_POST["country_id"];
    $province_id= $_POST["province_id"];

    $sql= "SELECT * FROM district_tb WHERE country_id ='$country_id' AND province_id='$province_id' ORDER BY district_name";
    $res= mysqli_query($connect,$sql);
    while($row= mysqli_fetch_assoc($res)){
        ?>
        <select name="district" id="district">
            <option value="<?php echo $row["district_id"]; ?>"><?php echo $row["district_name"]; ?></option>
        </select>

        <?php
    }
}
?>