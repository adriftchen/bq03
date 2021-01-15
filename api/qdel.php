<?php include_once "../base.php";

// $type=$_POST['type'];  //欄位
// $value=$_POST['value']; //值

// $Orders->del([$type=>$value]);
//同下，不須宣告變數直接刪

$Orders->del([$_POST['type']=>$_POST['value']]);
?>