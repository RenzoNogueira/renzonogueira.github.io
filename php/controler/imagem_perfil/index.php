<?php

include "../main.php";

$data = $DataBase->executeQuery("SELECT `link_imagem` FROM `galeria` as gal, `imagem_perfil` as per WHERE gal.id = per.id_imagem_galeria");

echo json_encode($data, JSON_UNESCAPED_UNICODE);
