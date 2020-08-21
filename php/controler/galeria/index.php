<?php

include "../main.php";

$data = $DataBase->executeQuery("SELECT * FROM `galeria`");

foreach($data as $i){
    $date = strtotime($i[3]);
    $i[3] = date("d/m/Y", $date);
}

echo json_encode($data, JSON_UNESCAPED_UNICODE);
