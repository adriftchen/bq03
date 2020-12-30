<?php
include_once "../base.php";

$table=$_POST['table'];
$db=new DB($table);

$idx=$db->find($_POST['idx']);
$idy=$db->find($_POST['idy']);
//兩數交換
$t=$idx['rank'];
$idx['rank']=$idy['rank'];
$idy['rank']=$t;

$db->save($idx);
$db->save($idy);

?>