// requires jQuery

function copy_to_clipboard(id_string) {
  if( window.clipboardData && clipboardData.setData )
  	{
  		clipboardData.setData("Text", $(id_string).value);
  	}
}
$(document).ready(function(){
  theForm = $("#first");
  /*
     Events
  ------------
  */
  
  $("#formaction").keyup(function() {
    document.first.action = this.value;
  });
  $("#submit").click(function() {
    $("#response").text("loading");        
    $.get(document.first.action, $(theForm).serialize(), function(data) {
      $("#response").text(data);
    }, "text");
    return false;
  });      
  $("#response_clear").click(function() {      
    $("#response").text("");
  });
});