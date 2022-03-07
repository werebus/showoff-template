$(document).ready(function() {
  $('#preso').on('showoff:show', '.slide', function(e) {
    $(e.target).addClass('container');
    $('a#synchronize, a.introjs-button')
      .attr('href', '#').removeClass('ui-button').addClass('secondary');
  });
});
