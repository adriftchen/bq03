<?php
//複製自api/get_movies.php
include_once "../base.php";

$movie=$Movie->find($_GET['movie']);
$today=strtotime(date("Y-m-d"));
$startDay=strtotime($movie['ondate']);

for($i=0;$i<3;$i++){
  $showDay=strtotime("+$i days",$startDay); //顯示上映的三個日期
  if($showDay>=$today){  //篩選，只顯示可訂票的日期
    echo "<option value='".date("Y-m-d",$showDay)."'>".date("m月d日 l",$showDay)."</option>";
  }
}
?>