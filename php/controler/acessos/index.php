<?php

include "../main.php";

if ($title = $_POST["title"]) {
    $data = $DataBase->executeQuery("SELECT * FROM `acessos_paginas`");
    if (is_array($data) && count($data) > 0) {
        $achou = false;
        foreach ($data as $i) {
            if ($i[1] === $title) {
                $achou = true;
                $acessos_atual = $i[2];
                $sql = 'UPDATE `acessos_paginas` SET `acessos`= "' . ($acessos_atual + 1) . '" WHERE `titulo` = "' . $title . '"';
                $data = $DataBase->executeQuery($sql);
            }
        }
        if (!$achou) insert();
    } else {
        insert();
    }

    function insert()
    {
        global $DataBase;
        global $title;
        $DataBase->executeQuery('INSERT INTO `acessos_paginas`(`titulo`) VALUES ("' . $title . '")');
    }
} else {
    echo json_encode($DataBase->executeQuery("SELECT * FROM `acessos_paginas`"));
}
