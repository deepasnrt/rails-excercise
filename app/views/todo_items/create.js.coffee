$(document).ready ->
$('#new-todo').val('')
html = "<%= escape_javascript(render :partial => 'todo_items', :locals => {:item => @todo_item}) %>"
alert "jjj"
$("#todo-list").append(html)