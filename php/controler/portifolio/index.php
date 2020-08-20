<?php

include "../main.php";
$key = $_POST["key"];

switch ($key) {
    case "principais":
        $data = $DataBase->executeQuery('SELECT * FROM `portifolio` as pot, `principais_projetos` as ppot WHERE ppot.id_projeto = pot.id');
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
        break;
    case "all":
        $data = $DataBase->executeQuery('SELECT * FROM `portifolio`');
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
        break;
    default:
        echo json_encode("Chave não reconhecida", JSON_UNESCAPED_UNICODE);
}
