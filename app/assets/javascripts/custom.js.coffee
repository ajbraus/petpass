$ ->
  #HEADER
  $('#logo img').wiggle();
  $('#logo').hover -> 
    $('#logo img').wiggle();

  #FORM
  $('#user_pets_attributes_0_sex').change ->
    option = $('#user_pets_attributes_0_sex option:selected').text();
    if option == "Male Neutered" || option == "Female Spayed"
      $('.upload_spayed').show();
    else
      $('.upload_spayed').hide();

  $('#pet_sex').change ->
    option = $('#pet_sex option:selected').text();
    if option == "Male Neutered" || option == "Female Spayed"
      $('.upload_spayed').show();
    else
      $('.upload_spayed').hide();

  $('#has_microchip').click ->
    $('.show_micro').toggle();

  $('#add_pet').click ->
    $('#addPet').toggle();
    

  #ADMIN DASHBOARD  
  $('#selectAll').click ->
    $('.pet-row').click()

  $("#new_user").validate();

  #PAYMENT GATEWAY
  municipalFee = parseFloat($('.mfee').text())
  lateFee = parseFloat($("#lateFee").text())
  total = $('#total')
  if lateFee
    total.text(municipalFee + 5 + lateFee)
  else
    total.text(municipalFee + 5)
  
  $('#annualInput').click ->
    parkFee = parseFloat($("#annualFee").text())
    total.html(municipalFee + parkFee + 5 + lateFee)
  $('#seniorInput').click ->
    parkFee = parseFloat($("#seniorFee").text())
    total.html(municipalFee + parkFee + 5 + lateFee)
  $('#disabledInput').click ->
    parkFee = parseFloat($("#disabledFee").text())
    total.html(municipalFee + parkFee + 5 + lateFee)
  $('#addInput').click ->
    parkFee = parseFloat($("#addFee").text())
    total.html(municipalFee + parkFee + 5 + lateFee)
  $('#replacementInput').click ->
    parkFee = parseFloat($("#replacementFee").text())
    total.html(municipalFee + parkFee + 5 + lateFee)

