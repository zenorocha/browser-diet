function ThrottleFixedMenu(){
  var TopElement = document.getElementById('menu').offsetTop;
  var MainMenu   = document.getElementById("menu");
  var TamScroll  = window.pageYOffset || document.documentElement.scrollTop;
  var TamGlobal  = 562;

  if(TopElement <= TamScroll){
    MainMenu.className = "fix";
  }
  if(TamScroll <= TamGlobal){
    MainMenu.className = "";
  }
}