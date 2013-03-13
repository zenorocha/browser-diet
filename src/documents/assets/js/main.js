$('.animate').bind('click',function(e){
    var id = $(this).attr('href');

    e.preventDefault();
    $('html,body').animate({scrollTop: $(''+id+'').offset().top},'slow');
});

$("#menu a").on("click", function(){
  var location = $(this).attr('href').replace("#","");
  $(".topics").css("padding-top", "0");
  $("#" + location).css("padding-top", "95px");
})

$(function () {
  $(window).scroll(function () {
    if ($(this).scrollTop() > 560) {
      $("#menu").addClass("fixing-menu");
      $("#github-ribbon").hide();
      $("#top").show();
    } else {
      $("#menu").removeClass("fixing-menu");
      $("#github-ribbon").show();
      $("#top").hide();
    }
  });
});