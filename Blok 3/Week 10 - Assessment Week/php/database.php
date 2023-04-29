<?php
    function executeQuery($query, $params = []) {
        $connection = new PDO('mysql:host=localhost;dbname=assessment;', 'root', 'mysql');

        $data = $connection->prepare($query);
        $data ->execute($params);
        $data = $data->fetchAll();

        return $data;
    }

    function getAll($table) {
        return executeQuery("SELECT * FROM :table", [
            ':table' => $table
        ]);
    }

    function getOne($table, $id) {
        return executeQuery("SELECT * FROM $table WHERE id = $id")[0];
    }

    function deleteCharacter($id) {
        executeQuery("DELETE FROM characters WHERE id = $id");
    }

    function updateShow($show, $id) {
        executeQuery("UPDATE characters SET showid = $show WHERE id = $id");
    }
?>