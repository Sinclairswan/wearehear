$(document).ready(function(){
  $("#search_submit").on('submit', function(e){
    e.preventDefault();
    var formData = $(this).serialize();
    $.ajax({
      url: "/spotify_search",
      data: formData,
      method: "POST"
    }).done(function(response){
      $("#results").empty();
      $("#results").html(response);
      $("#search_button").prop('disabled',false);
      $("#search_submit").trigger("reset");
    });
  });
  $("#results").on("submit", "form", function(e) {
    e.preventDefault();
    var children = $(this).children();
    $("#album").val(children[2].defaultValue);
    $("#artist").val(children[3].defaultValue);
    $("#spot_id").val(children[4].defaultValue);
    $("#song_title").val(children[5].defaultValue);
    $("#show-song").text(children[5].defaultValue);
    $("#show-artist").text(children[3].defaultValue);
    $("#show-album").text(children[2].defaultValue);
  });

});
