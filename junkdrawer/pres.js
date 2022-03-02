//All this work to pull the footer outside of the .content
$(document).ready( function() {
  $("#preso").on("showoff:show", ".slide", function(e) {
    var footer_text = $.trim($(e.target).children(".footer-content").text());
    var footer_div = $(e.target).closest(".slide").children(".slide-footer");

    if (footer_div.length == 0) {
      $(e.target).closest(".slide").append(
        "<div class=\"slide-footer\">" + footer_text + "</div>"
      );
    } else {
      $(footer_div).text(footer_text);
    }
  });
});
