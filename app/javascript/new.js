document.addEventListener("turbolinks:load", function () {
  // アイテム投稿ボタン
  $(function() {
    if ( $('.form-image').val() === "" && $('.form-name').val() === "" ) {
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

// アイテム写真貼り付けプレビュー
document.addEventListener("turbolinks:load", function(){
  if (document.URL.match(/new/)) {
    const ImageList = document.getElementById('frame-image');
    console.log(123);
    const createImageHTML = (blob) => {
      const blobImage = document.createElement('img');
      blobImage.setAttribute('src', blob);
      ImageList.appendChild(blobImage);
    };

    document.getElementById('item_image').addEventListener('change', function(e){
      const imageContent = document.querySelector('img');
      if (imageContent){imageContent.remove();}
      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);
      createImageHTML(blob);

      $(".click").text('');
    });
  }
});
