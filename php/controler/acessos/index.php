<?php

include "../main.php";

if ($title = $_POST["title"]) {
    insert();
} else {
    echo json_encode($DataBase->executeQuery("SELECT * FROM `acessos_paginas`"));
}

function insert()
{
    global $DataBase;
    global $title;
    $DataBase->executeQuery('INSERT INTO `acessos_paginas`(`titulo`) VALUES ("' . $title . '")');
}
