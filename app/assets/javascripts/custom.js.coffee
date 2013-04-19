$ ->
  $('#logo img').wiggle();
  $('#logo').hover -> 
    $('#logo img').wiggle();

  $('#rabies_vaccination').click ->
    $('.rabies_tag').toggle();

  $('#spayed_neutered').click ->
    $('.upload_spayed').toggle();
    
  # $('#app_logo img').wiggle();
  # $('#app_logo').hover
  #   -> $('#app_logo img').wiggle();
