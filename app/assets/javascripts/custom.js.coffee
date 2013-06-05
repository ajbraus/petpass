$ ->

  #EXPORT BUTTONS
  $(':checkbox').click ->
    if $(":checked").length > 0
      $('.admin-btn').removeClass("btn-disabled")
    else
      $('.admin-btn').addClass("btn-disabled")

  #PLACHOLER IE
  $.Placeholder.init();
  
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
  if isNaN(municipalFee)
    municipalFee = 0
  lateFee = parseFloat($("#lateFee").text())
  if isNaN(lateFee)
    lateFee = 0
  if $('#annualInput:checked').length == 1
    parkFee = parseFloat($('#annualFee').text())
    if isNaN(parkFee)
      parkFee = 0
  else
    parkFee = 0

  total = $('#total')
  
  total.text(municipalFee + 5 + lateFee + parkFee)
  
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
      total.html(municipalFee + parkFee + 5 + lateFee)


  $('#radio1').click ->
    $('.cat').hide();
    $('.dog').show();

  $('#radio2').click ->    
    $('.cat').show();
    $('.dog').hide();
