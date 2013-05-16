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
  if typeof municipalFee == 'undefined'
    muncipalFee = 0
  lateFee = parseFloat($("#lateFee").text())
  total = $('#total')
  if isNaN(lateFee)
    total.text(municipalFee + 5)      
  else
    total.text(municipalFee + 5 + lateFee)
  
  # if $('#municipalFeeCheckbox').is(':checked')
  #   $('#municipalFeeCheckbox').click ->
  #     if isNaN(lateFee)
  #       total.html(municipalFee + 5)      
  #     else
  #       total.html(municipalFee + 5 + lateFee)   

  $('#annualInput').click ->
    parkFee = parseFloat($("#annualFee").text())
    if isNaN(lateFee)
      total.html(municipalFee + parkFee + 5)      
    else
      total.html(municipalFee + parkFee + 5 + lateFee)

  $('#seniorInput').click ->
    parkFee = parseFloat($("#seniorFee").text())
    if isNaN(lateFee)
      total.html(municipalFee + parkFee + 5)      
    else
      total.html(municipalFee + parkFee + 5 + lateFee)
  $('#disabledInput').click ->
    parkFee = parseFloat($("#disabledFee").text())
    if isNaN(lateFee)
      total.html(municipalFee + parkFee + 5)      
    else
      total.html(municipalFee + parkFee + 5 + lateFee)
  $('#addInput').click ->
    parkFee = parseFloat($("#addFee").text())
    if isNaN(lateFee)
      total.html(municipalFee + parkFee + 5)      
    else
      total.html(municipalFee + parkFee + 5 + lateFee)
  $('#replacementInput').click ->
    parkFee = parseFloat($("#replacementFee").text())
    if isNaN(lateFee)
      total.html(municipalFee + parkFee + 5)      
    else
      total.html(municipalFee + parkFee + 5 + lateFee)


  $('#radio1').click ->
    $('.cat').hide();
    $('.dog').show();

  $('#radio2').click ->    
    $('.cat').show();
    $('.dog').hide();
