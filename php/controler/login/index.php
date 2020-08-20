<?php

include "../main.php";
$user = $_POST["user"];
$password = base64_encode($_POST["password"]);

$data = $DataBase->executeQuery("SELECT * FROM `usuario` WHERE `user` = '". $user ."' AND `password` = '". $password."'");
echo json_encode($data, JSON_UNESCAPED_UNICODE);
