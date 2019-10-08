
$(document).ready(function () {
  $("#next-1").click(function (e) {
    e.preventDefault();
    $("#second").show();
    $("#first").hide();
    $("#progressBar").css("width", "40%");
    $("#progressText").text("Step - 2");
  })

  $("#next-2").click(function (e) {
    e.preventDefault();
    $("#third").show();
    $("#second").hide();
    $("#progressBar").css("width", "60%");
    $("#progressText").text("Step - 3");
  })

  $("#next-3").click(function (e) {
    e.preventDefault();
    $("#fourth").show();
    $("#third").hide();
    $("#progressBar").css("width", "80%");
    $("#progressText").text("Step - 4");
  })

  $("#next-4").click(function (e) {
    e.preventDefault();
    $("#fifth").show();
    $("#fourth").hide();
    $.ajax({method: "POST", url: "/"})
    $("#progressBar").css("width", "100%");
    $("#progressText").text("Step - 5");
  })

  $("#prev-2").click(function(e){
    e.preventDefault()
    $("#second").hide();
    $("#first").show();
    $("#progressBar").css("width", "20%");
    $("#progressText").text("Step - 1");
  })

  $("#prev-3").click(function(e){
    e.preventDefault()
    $("#third").hide();
    $("#second").show();
    $("#progressBar").css("width", "40%");
    $("#progressText").text("Step - 2");
  })

  $("#prev-4").click(function(e){
    e.preventDefault()
    $("#fourth").hide();
    $("#third").show();
    $("#progressBar").css("width", "60%");
    $("#progressText").text("Step - 3");
  })

  $("#prev-5").click(function(e){
    e.preventDefault()
    $("#fifth").hide();
    $("#fourth").show();
    $("#progressBar").css("width", "80%");
    $("#progressText").text("Step - 4");
  })

})