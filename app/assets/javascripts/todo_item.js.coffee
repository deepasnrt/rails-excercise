$ ->
$("#todo-list").on "click", (e) ->
   alert "wired up"

toggleItem = (elem) ->
$li = $(elem).closest('li').toggleClass("completed")
alert "yyyy"
id = $li.data 'id'
data = "todo_item[completed]=#{elem.checked}"
url = "/todo_items/#{id}"
$.ajax
type: 'PUT'
url: url
data: data

$ ->
$("#todo-list").on 'change', '.toggle', (e) -> toggleItem e.target

destroyItem = (elem) ->
$li = $(elem).closest('li')
id = $li.data 'id'
url = "/todo_items/#{id}"
$.ajax
url: url
type: 'DELETE'
success: -> $li.remove()
$ ->
$("#todo-list").on 'change', '.toggle', (e) -> toggleItem e.target
$("#todo-list").on 'click', '.destroy', (e) -> destroyItem e.target