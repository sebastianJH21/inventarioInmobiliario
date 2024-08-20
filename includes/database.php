<?php
$url = 'localhost';
$user = 'root';
$password= '2108';
$nameDB = 'inventarioinmobiliaria';
$db = mysqli_connect($url, $user, $password, $nameDB);

if (!$db){
    echo "Hubo un erro";
    exit;
};


