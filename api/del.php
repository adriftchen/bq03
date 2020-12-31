<?php

include_once "../base.php";

$db=new DB($_POST['table']);
$db->del($_POST['id']);

//透過前端頁面ajax操作刪除，不需要to()
?>