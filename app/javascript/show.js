$(function() {
  if ( $('.form-comment').val().length == 0 ) {
    $('.comment-submit').attr('disabled', 'disabled');
  }
  $('.form-comment').bind('keydown keyup keypress change', function() {
    if ( $(this).val().length > 0 ) {
      $('.comment-submit').removeAttr('disabled');
    } else {
      $('.comment-submit').attr('disabled', 'disabled');
    }
  });
});