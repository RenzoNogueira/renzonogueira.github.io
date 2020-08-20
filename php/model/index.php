<?php
$DB = new MySQLi('localhost', 'root', 'root', 'id13562014_geral');
$DB->query("SET CHARACTER SET utf8");
// if (!$DB->connect_error) echo "Conectado!";

$DataBase = new DataBase();

class DataBase
{
    function executeQuery($query)
    {
        global $DB;
        $query = mysqli_query($DB, $query);
        if (!is_bool($query)) {
            $result = $query->fetch_all();
            $query->close();
            return $result;
        }
    }
}
