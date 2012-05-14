# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('.step_list').sortable(
    items: 'li:not(.ui-state-disabled)'
    axis: 'y'
    update: ->
      for i in [0...$(this).children('li').size()]
          $(this).find("input[type=hidden].position:eq(#{i})").val(i+1)
  )
  
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    for i in [0...$(this).closest('ol').children('li').size()]
      $(this).closest('ol').find("input[type=hidden].position:eq(#{i})").val(i+1)
    event.preventDefault()

  $('form').on 'focus','.step_body', ->
    use_snippet_id = $(this).attr('id') + "_use_snippet"
    $(this).attr 'id', use_snippet_id
    given_when_then = $(this).prev().val()
    console.log given_when_then
    $('#'+ use_snippet_id).autocomplete
      source: $('#'+ use_snippet_id).data('autocomplete-source')
  
  $('form').on 'blur', '.step_body', ->
    id = $(this).attr('id').replace(/_use_snippet/,'')
    $(this).attr 'id', id

  false

