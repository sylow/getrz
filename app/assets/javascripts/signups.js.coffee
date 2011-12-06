# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
@add_to_signups = () ->
  $.ajax
    url: '/signups/create'
    type: 'post'
    data: {'email': $('#email').val()}
  alert 'Added you to the our database. We will forward you to our prototype now.'
  window.location = '/home/index'
  return false;
