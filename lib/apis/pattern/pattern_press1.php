<?php

include '../connect.php';

$sql = "SELECT * FROM device1 ORDER BY id DESC LIMIT 1";
$result = mysqli_query($conn,$sql);
if($result)
{
    $emparray = array();
    while($row =mysqli_fetch_assoc($result))
    {
        $emparray[] = $row;
    }

    $result = json_encode($emparray);

}
else
{
    $result["error"] = true;
    $result["message"] = "ERROR IN GETTING";
}

mysqli_close($conn);
header('Content-Type: application/json');
echo $result;