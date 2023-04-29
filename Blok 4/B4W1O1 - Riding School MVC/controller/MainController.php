<?php
    require_once ROOT.'model/MainModel.php';

    function index() {
        $connection = checkConnection();
        render('main/index', ['connection' => $connection]);
    }

    function login() {
        render('main/login');
    }
?>