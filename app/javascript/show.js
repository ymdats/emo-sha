document.addEventListener("turbolinks:load", function () {

// 年齢選択ボタン
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

// コメント投稿ボタン
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

});