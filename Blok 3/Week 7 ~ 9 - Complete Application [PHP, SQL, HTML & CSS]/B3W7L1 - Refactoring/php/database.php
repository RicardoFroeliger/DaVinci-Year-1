<?php
    function executeQuery($query, $params = []) {
        $connection = new PDO('mysql:host=localhost;dbname=characters;', 'root', 'mysql');

        $data = $connection->prepare($query);
        $data ->execute($params);
        $data = $data->fetchAll();

        return $data;
    }

    function sanitize($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    function getAllCharacters() {
        return executeQuery('SELECT * FROM characters ORDER BY name');
    }

    function getCharacter($id) {
        return executeQuery('SELECT * FROM characters WHERE id=:id', [':id' => sanitize($id)])[0];
    }

    function getCharacterCount() {
        return executeQuery('SELECT COUNT(*) AS charCount FROM characters')[0]['charCount'];    
    }
?>