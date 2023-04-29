<?php
    function getDatabaseData($query) {
        $connection = new PDO('mysql:host=localhost;dbname=characters;', 'root', 'mysql');

        $data = $connection->prepare($query);
        $data ->execute();
        $data = $data->fetchAll();

        return $data;
    }
?>