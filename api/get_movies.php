<?php
include_once "../base.php";

//從front/main.php #219.224複製這三段
$today=date("Y-m-d");
$startDate=date("Y-m-d",strtotime("-2 days",strtotime($today)));
$movies=$Movie->all(['sh'=>1]," && `ondate` between '$startDate' and '$today' order by rank");
$type=$_GET['movie'];

foreach($movies as $movie){
  if($type=='all'){
  echo "<option value='{$movie['id']}'>{$movie['name']}</option>";
}else{
  $selected=($type==$movie['id'])?"selected":"";
  echo "<option value='{$movie['id']}' selected>{$movie['name']}</option>";
  }
}
?>