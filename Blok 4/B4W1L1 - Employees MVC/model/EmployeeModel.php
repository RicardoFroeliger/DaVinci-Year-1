<?php
    function sanitize($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    function getAllEmployees(){
        try {
            $conn = openDatabaseConnection();
            $stmt = $conn->prepare("SELECT * FROM employees");

            $stmt ->execute();
            $result = $stmt->fetchAll();
        } catch(PDOException $e) {
            echo "Connection failed: {$e->getMessage()}";
        }

        $conn = null;
        return $result;
    }

    function getEmployee($id){
        try {
            $conn = openDatabaseConnection();
            $stmt = $conn->prepare("SELECT * FROM employees WHERE id = :id");

            $stmt->execute([':id' => sanitize($id)]);
            $result = $stmt->fetch();
        } catch(PDOException $e){
            echo "Connection failed: {$e->getMessage()}";
        }

        $conn = null;
        return $result;
    }

    function createEmployee($name, $age){
        try {
            $conn = openDatabaseConnection();
            $stmt = $conn->prepare("INSERT INTO employees (name, age) VALUES (:name, :age)");

            $stmt->execute([':name' => sanitize($name), ':age' => sanitize($age)]);
        } catch(PDOException $e){
            echo "Connection failed: {$e->getMessage()}";
        }

        $conn = null;
    }


    function updateEmployee($id, $newName, $newAge){
        try {
            $conn = openDatabaseConnection();
            $stmt = $conn->prepare("UPDATE employees SET name = :newName, age = :newAge WHERE id = :id");

            $stmt->execute([':id' => sanitize($id), ':newName' => sanitize($newName), ':newAge' => sanitize($newAge)]);
        } catch(PDOException $e){
            echo "Connection failed: {$e->getMessage()}";
        }

        $conn = null;
    }

    function deleteEmployee($id){
        try {
            $conn = openDatabaseConnection();
            $stmt = $conn->prepare("DELETE FROM employees WHERE id = :id");

            $stmt->execute([':id' => sanitize($id)]);
        } catch(PDOException $e){
            echo "Connection failed: {$e->getMessage()}";
        }

        $conn = null;
    }
?>