# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(this).on "page:change", ->
	$('.multiselect').multiSelect({
  		selectableHeader: "<div class='custom-header'>Available</div>",
  		selectionHeader: "<div class='custom-header'>Selected</div>"
	})
