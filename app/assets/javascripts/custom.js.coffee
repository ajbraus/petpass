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
  $('#dogLicense').click ->
    $('.stripe-button').attr('data-amount', '3000')
  
  $('#parkLicense').click ->