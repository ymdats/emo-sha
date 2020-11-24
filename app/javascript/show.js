document.addEventListener("turbolinks:load"
, function () {

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

// アイテム投稿ボタン
$(function() {
  if ( $('.form-image').val() !== "" && $('.form-name').val() !== "" ) {
    $('.submit').attr('disabled', 'disabled');
  }
  $('.form-image, .form-name').bind('keydown keyup keypress change', function() {
    if ( $('.form-image').val() !== "" && $('.form-name').val() !== "" ) {
      $('.submit').removeAttr('disabled');
    } else {
      $('.submit').attr('disabled', 'disabled');
    }
  });
});

});