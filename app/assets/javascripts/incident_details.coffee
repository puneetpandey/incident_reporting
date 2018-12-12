$(document).ready ->
  people_involved = $('input#incident_detail_people_involved').val()
  if people_involved.length == 0
    $('div.people-involved-form').hide()

  $('input#incident_detail_is_anonymous').change () ->
    if this.checked
      $( 'div.user-details' ).hide()
    else
      $( 'div.user-details' ).show()

  $( 'select#incident_detail_location' ).change () ->
    if $( this ).val() == 'other'
      $( this ).replaceWith("<input type='text' name='incident_detail[location]' id='incident_detail_location' placeholder='Other Location Details' />")
    else
      $( this ).show()

  $('input#incident_detail_people_involved').on 'input', (e) ->
    if $( this ).val() > 5
      $(this).val(null)
      # $('div.people-involved-form').hide()
      return alert('You are not allowed to enter more than 5 people')

    if $( this ).val() == 0 || $( this ).length == 0
      $('div.people-involved-form').hide()
      return

    i = undefined
    i = 0
    $( 'div.people-involved-form' ).show()
    $( 'div.people-involved-form div.people-involved-fields' ).html(null)
    while i < $( this ).val()
      $( 'div.people-involved-form div.people-involved-fields' ).append('<input type="text" placeholder="Name and Details" name="incident_detail[people_involves]['+ i + '][name]" /><br /><br />')
      i++
