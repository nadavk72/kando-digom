# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	$('form').on 'click', '.remove_fields', (event) ->
		$(this).find('input:hidden')
		$(this).closest('tr').hide()
		event.preventDefault()	

jQuery ->
	$('form').on 'click', '.add_fields', (event) ->
		time = new Date().getTime()
		regexp = new RegExp($(this).data('id'), 'g')
		$('tbody').append($(this).data('fields').replace(regexp, time))
		event.preventDefault()