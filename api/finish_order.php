<?php
include_once "../base.php";

$data['movie']=$Movie->find($_POST['movie'])['name'];
$data['date']=$_POST['date'];
sort($_POST['seats']);
$data['seats']=serialize($_POST['seats']); /* 先將陣列排序 再轉成文字 才能存到資料庫 */
$data['qt']=count($_POST['seats']);
$data['session']=$sess[$_POST['session']]; /* 注意外面是[] */
$z=$Orders->q('select max(`id`) from `orders`')[0][0]+1;
$data['num']=date("Ymd").sprintf("`%04d`",$z); //四碼流水號，前面補0

$Orders->save($data);
echo $data['num'];
?>