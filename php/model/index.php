<?php
$DB = new MySQLi('localhost', 'root', 'root', 'renzonogueiradb');
$DB->query("SET CHARACTER SET utf8");
// if (!$DB->connect_error) echo "Conectado!";

$DataBase = new DataBase();

class DataBase
{
    function executeQuery($query)
    {
        global $DB;
        $query = mysqli_query($DB, $query);
        $result = $query->fetch_all();
        $query->close();
        return $result;
    }
}
