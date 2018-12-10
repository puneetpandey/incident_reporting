$(document).ready ->
  people_involved = $('input#incident_detail_people_involved').val()

  $('input#incident_detail_is_anonymous').change () ->
    if this.checked
      $('div.user-details').hide()
    else
      $('div.user-details').show()

  $('input#incident_detail_people_involved').change () ->
    alert this.val()
    if this.length == 0
      $('div.people-involved-form').hide()
    else
      alert $(this).val
    return

  if people_involved.length == 0
    $('div.people-involved-form').hide()
  return