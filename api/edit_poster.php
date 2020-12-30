<?php
include_once "../base.php";

foreach($_POST['id'] as $key=>$id){
  if(isset($_POST['del']) && in_array($id,$_POST['del'])){
    $Poster->del($id);
  }else{
    $poster=$Poster->find($id);
    $poster['name']=$_POST['name'][$key];
    $poster['ani']=$_POST['ani'][$key];
    $poster['sh']=in_array($id,$_POST['sh'])?1:0; /* checkbox和radio 有被勾選到的才會送資料，不能用key值判斷 */
    $Poster->save($poster);
  }
}


to("../backend.php?do=poster");