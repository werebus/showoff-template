$(document).ready(function() {
  $('#preso').on('showoff:show', '.slide', function(e) {
    $(e.target).addClass('container');
    $('a#synchronize').attr('href', '#').removeClass('ui-button').addClass('secondary');
  });
});
