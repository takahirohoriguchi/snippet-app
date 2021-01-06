$(function() {
  $(this).on("click", "#text-btn",function() {
      let messages = document.getElementById("messages");
      let text = document.getElementById("chat-header");
      let btn = document.getElementById("text-btn")

      messages.setAttribute("style", "display:none;");
      text.setAttribute("style", "display:block;");
      btn.setAttribute("style", "display:none;");
  });

  $(this).on("click", ".back-submit",function() {
      let messages = document.getElementById("messages");
      let text = document.getElementById("chat-header");
      let btn = document.getElementById("text-btn")

      messages.setAttribute("style", "display:block;");
      text.setAttribute("style", "display:none;");
      btn.setAttribute("style", "display:block;");
  });
});