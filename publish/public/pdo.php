<?php

$pdo = new PDO('mysql:host=127.0.0.1;dbname=yongge', 'root', 'hezi666');
$pdo -> exec('set names utf8');
$sql = "select * from all_room";
$smt = $pdo -> prepare($sql);
$smt -> execute();
$rows = $smt -> fetchAll(PDO::FETCH_ASSOC);

echo '<pre>';
print_r($rows);
echo '</pre>';
