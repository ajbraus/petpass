$ ->
  #HEADER
  $('#logo img').wiggle();
  $('#logo').hover -> 
    $('#logo img').wiggle();

  #FORM
  $('#rabies_vaccination').click ->
    $('.rabies_tag').toggle();

  $('#spayed_neutered').click ->
    $('.upload_spayed').toggle();
  
  $('#has_microchip').click ->
    $('.show_micro').toggle();

  $('#add_pet').click ->
    $('#addPet').toggle();
    

  #ADMIN DASHBOARD  
  $('#selectAll').click ->
    $('.pet-row').click()

  $("#new_user").validate();

  #PAYMENT GATEWAY
  municipalFee = parseInt($('.mfee').text())
  total = $('#total')
  total.text(municipalFee + 5)
  
  $('#annualInput').click ->
    parkFee = parseInt($("#annualFee").text())
    total.html(municipalFee + parkFee + 5)
  $('#seniorInput').click ->
    parkFee = parseInt($("#seniorFee").text())
    total.html(municipalFee + parkFee + 5)
  $('#disabledInput').click ->
    parkFee = parseInt($("#disabledFee").text())
    total.html(municipalFee + parkFee + 5)
  $('#addInput').click ->
    parkFee = parseInt($("#addFee").text())
    total.html(municipalFee + parkFee + 5)
  $('#replacementInput').click ->
    parkFee = parseInt($("#replacementFee").text())
    total.html(municipalFee + parkFee + 5)

