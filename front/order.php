<h4 class="ct">線上訂票</h4>
<form>
  <table style="width:400px;margin:auto">
    <tr>
      <td width=15%>電影:</td>
      <td><select name="movie" id="movie" style="width:98%" onchange="getDays()"></select></td>
    </tr>
    <tr>
      <td>日期:</td>
      <td><select name="date" id="date" style="width:98%" onchange="getSessions()"></select></td>
    </tr>
    <tr>
      <td>場次:</td>
      <td><select name="session" id="session" style="width:98%"></select></td>
    </tr>
  </table>
  <div class="ct">
    <input type="button" value="訂票">
    <input type="reset" value="重置">
  </div>
</form>

<script>
//院線片新增的電影上映日期只有含今天往前算三天內
//前端js取得url參數作法
/*
let qeury={};
document.location.search.replace("?","").split("&").forEach(function(item,idx){
  query[item.split("=")[0]]=item.split("=")[1]
})
console.log(query)

if(query.id==undefined){
  getMovies();
}else{
  getMovies(query.id);
}
*/
//isset($_GETp['id'])?$_GET['id']:''; 三元運算 同下簡寫
getMovies(<?=$_GET['id']??'';?>);

// $("#movie").on("change",()=>{getDates()})  jQ
  function getMovies(id){
    let movie;
    if(id!=undefined){
      movie=id;
    }else{
      movie='all';
    }
    console.log(movie)
    $.get("api/get_movies.php",{movie},function(movies){
      $("#movie").html(movies)
      getDays()  //加這行從首頁欄位列的線上訂票進入，日期也會連動
    })
  }

  function getDays(){
    let movie=$("#movie").val() //拿到現在頁面選定的電影id

    //把id丟到後台計算可訂票的日期 (從院線片清單進入)
    $.get("api/get_days.php",{movie},function(days){
      $("#date").html(days)
      getSessions()
    })
  }

  function getSessions(){
    let movie=$("#movie").val()
    let date=$("#date").val()
    $.get("api/get_sessions.php",{movie,date},function(sessions){
      $("#session").html(sessions)
    })
  }
</script>