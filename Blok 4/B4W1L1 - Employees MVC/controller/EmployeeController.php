<?php
    require_once ROOT.'model/EmployeeModel.php';

    function index() {
        $hostages = getAllEmployees();
        render('employee/index', $hostages);
    }

    function create(){
        render('employee/create');
    }

    function store(){
        createEmployee($_POST['name'], intval($_POST['age']));
        header('Location: '.URL);
    }

    function update($id){
        $hostage = getEmployee($id);
        render('employee/update', $hostage);
    }

    function edit($id){
        updateEmployee($id, $_POST['newName'], $_POST['newAge']);
        header('Location: '.URL);
    }

    function delete($id){
        $hostage = getEmployee($id);
        render('employee/delete', $hostage);
    }

    function destroy($id){
        deleteEmployee($id);
        header('Location: '.URL);
    }
?>