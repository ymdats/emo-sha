document.addEventListener("turbolinks:load"
, function () {

$(function() {
  if ( $('.form-comment').val() === "" ) {
    $('.submit').attr('disabled', 'disabled');
  }
  $('.form-comment').bind('keydown keyup keypress change', function() {
    if ( $(this).val() !== "" ) {
      $('.submit').removeAttr('disabled');
    } else {
      $('.submit').attr('disabled', 'disabled');
    }
  });
});

$(function() {
  if ( $('.select').val() === "" ) {
    $('.submit').attr('disabled', 'disabled');
  }
  $('.select').bind('keydown keyup keypress change', function() {
    if ( $(this).val() !== "" ) {
      $('.submit').removeAttr('disabled');
    } else {
      $('.submit').attr('disabled', 'disabled');
    }
  });
});

});