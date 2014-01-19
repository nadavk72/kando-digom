# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(this).on "page:before-change", ->

	$(".add_fields").onclick ->
		time = new Date().getTime()
		regexp = new RegExp($(this).data('id'), 'g')
		$('tbody').append($(this).data('fields').replace(regexp, time))

	$(".remove_fields").onclick ->
		$(this).find('input:hidden')
		$(this).closest('tr').hide()

