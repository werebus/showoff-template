$(document).ready(function() {
  $('#preso').on('showoff:show', '.slide', function(e) {
    $(e.target).addClass('container');
  });
});
