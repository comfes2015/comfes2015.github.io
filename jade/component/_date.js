function date(){
  var dt = new Date();
  var dt2 = new Date("2015-03-11 10:00");
  var dtend = new Date("2015-03-12 10:00");
  var s = parseInt((dt2-dt)/1000)%60;
  var m = parseInt((dt2-dt)/60000)%60;
  var h = parseInt((dt2-dt)/3600000);
  if(h>=0){
    document.getElementById("date").innerHTML = ("開催まで残り : "+h+"時間 "+m+"分 "+s+"秒");
  }else if(dt>dt2 && dt<dtend){
    document.getElementById("date").innerHTML = ("開催中!");
  }else{
    document.getElementById("date").innerHTML = ("終了");
  }
}
date()
setInterval('date()',100);
