class LicensesPdf < Prawn::Document
  def initialize(licenses)
    super(top_margin: 70)
    @licenses = licenses
    @licenses.each_with_index do |l, index|
      @pet = l.pet
      @owner = @pet.user
      
      unless index == 0
        start_new_page
      end

      text "Generated By PetPass, LLC"
      text "#{Date.today}" + " " + "#{Time.now}"
      move_down 20

      table([
        [{ content: "Owner's Name\n\n" + @owner.full_name.titleize, colspan: 7 }], 
        [{ content: "Street Address\n\n" + @owner.address_one + " " + @owner.address_two + " " + @owner.city + ", " + @owner.state, colspan:6 }, { content: "Zip Code\n\n" + @owner.zip.to_s, colspan:1 }],
        [{ content: "Pet Name\n\n" + @pet.name, colspan:3 }, { content: "Breed\n\n" + @pet.breed, colspan:2 }, { content: "Rabies Expiration\n\n" + @pet.nice_rabies_expiration, colspan:2 }],
        [{ content: "Color\n\n" + @pet.color, colspan:2 }, "Age\n\n" +  @pet.age.to_s, "Sex\n\n" + @pet.sex, "Markings\n\n" + @pet.markings, { content: "Rabies Tag No.\n\n" + @pet.rabies_tag_number, colspan:2 }],
        [{ content: "FOR MUNICIPAL CLERK USER ONLY BELOW THIS LINE", colspan:7, background_color: "dddddd" }],
        [{ content: "Date\n\n", colspan:2 }, { content: "License No.\n\n", colspan:3 }, "Amount\n\n", "Remarks\n\n"]
      ], :width => 500, :position => :center)

      if @pet.at_humane_society?
        move_down 20
        text "Rabies Proof"
        text "Pet Licensed at Humane Society"
        move_down 20
        text "Spayed and Neutered Proof"
        text "Pet Licensed at Humane Society"
      else

        require 'open-uri'
        
        rabies_proof_format = @pet.rabies_attachment.url(:original).split('?')[0].last(3).downcase
        spay_neutered_proof_format = @pet.spayed_neutered_attachment.url(:original).split('?')[0].last(3).downcase

        if rabies_proof_format == "pdf" && spay_neutered_proof_format == "pdf"
          start_new_page(:template => open(@pet.rabies_attachment.url(:original)))
          start_new_page(:template => open(@pet.spayed_neutered_attachment.url(:original)))
        elsif rabies_proof_format != "pdf" && spay_neutered_proof_format == "pdf"  
          start_new_page
          image open(@pet.rabies_attachment.url(:original))#, position: :left, valign: :top)
          start_new_page(:template => open(@pet.spayed_neutered_attachment.url(:original)))
        elsif rabies_proof_format == "pdf" && spay_neutered_proof_format != "pdf"
          start_new_page(:template => open(@pet.rabies_attachment.url(:original))
          start_new_page
          image open(@pet.spayed_neutered_attachment.url(:original))#, position: :left, valign: :top)
        else
          start_new_page
          image open(@pet.rabies_attachment.url(:original))#, position: :left, valign: :top)
          start_new_page
          image open(@pet.spayed_neutered_attachment.url(:original))#, position: :left, valign: :top)
        end 
      end  
    end
  end
end