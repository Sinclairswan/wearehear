$(document).ready(function() {
  $(".choose-link").on("click", function(e) {
    e.preventDefault();
    $(".choose-link").show();
    $(this).hide();
    $(".new-bouquet-section").hide();
    $(this).parent().next().show();

    if($("#lat_coord").val() === "" && $(this).parent().next().hasClass("map-class")) {
      initMap();
    }
  });
});