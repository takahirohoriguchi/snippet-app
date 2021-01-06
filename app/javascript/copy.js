// const copy = require('clipboard-copy')

// window.addEventListener("DOMContentLoaded", () => {
//   let el = document.getElementById("messages"); // ボタンのid
//   // let text = document.getElementById('formText'); // インプットのid
//   // id 'btn'が押された時の処理
//   console.log(this)
//   el.addEventListener("click", function(e) {
//     alert('フォームの値がコピーされました')
    
//     let test = document.getElementsByClassName("message-content")[0].textContent
//     console.log(test)
//     var clipboard = `<textarea>${test}</textarea>`;
//     console.log(clipboard)
//     clipboard.select();
//     document.execCommand('copy');
//     clipboard.remove();
//   });
// });

$(function() {
  $(this).on("click", ".message-content",function() {
      let $textarea = $('<textarea></textarea>');
      let test = $(this).text();
      // clipboard.val(test);
      $textarea.text(test);
      $(this).append($textarea);
      $textarea.select();
      document.execCommand('copy');
      $textarea.remove();
  });
});
