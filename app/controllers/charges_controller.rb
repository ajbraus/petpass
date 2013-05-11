class ChargesController < ApplicationController
before_filter :authenticate_user!
  def new
    @pet = Pet.find(params[:id])
    if @pet.age < 5.months && Date.today < Date.parse("July")
      if @pet.spayed_or_neutered?
        if @pet.dog?
          @initial_fee = "15.00"
        elsif @pet.cat?
          @initial_fee = "15.00"        
        end        
      else 
        if @pet.dog?
          @initial_fee = "20.00"
        elsif @pet.cat?
          @initial_fee = "20.00"
        end         
      end
    else 
      if @pet.spayed_or_neutered?
        if @pet.dog?
          @initial_fee = "15.00"
        elsif @pet.cat?
          @initial_fee = "15.00"
        end          
      else
        if @pet.dog?
          @initial_fee = "15.00"
        elsif @pet.cat?
          @initial_fee = "15.00"
        end        
      end
    end
  end

  def create
    # Amount in cents
    @pet = Pet.find(params[:pet_id])
    @city_fee = params[:municiple_price].to_i*100

    if params[:park_price].to_i > 0
      @park_fee = params[:park_price].to_i*100
    end

    @total = @city_fee + @park_fee

    customer = Stripe::Customer.create(
      :email => "#{current_user.email}",
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @total,
      :description => 'Petpass customer',
      :currency    => 'usd'
    )

    if params[:park_price].present?
      @park_licenses = @pet.licenses.where("kind = ? AND expired = ? AND county = ?", "park", false, current_user.county)    
      if @park_licenses.any?
        @park_licenses.each do |pl|
          pl.expired = true
          pl.save
        end
      end

      park_license = @pet.licenses.build( #CREATE PARK LICENSE IN PETPASS
        kind: "park",
        amount_paid: @park_fee,
        municipality: current_user.city,
        county: current_user.county
        )
      park_license.save
    end

    @municiple_licenses = @pet.licenses.where("kind = ? AND expired = ? AND county = ?", "municiple", false, current_user.county)    
    if @municiple_licenses.any?
      @municiple_licenses.each do |ml|
        ml.expired = true
        ml.save
      end
    end

    city_license = @pet.licenses.build( #CREATE MUNICIPLE LICENSE IN PETPASS
      kind: "municiple",
      amount_paid: @city_fee,
      municipality: current_user.city,
      county: current_user.county
      )
    city_license.save

    Notifier.delay.confirmation_of_submission(@user, @pet, @city_fee, @park_fee)
    Notifier.delay.email_correll(@pet)
    redirect_to root_path, notice:"Successfully submited your license for #{@pet.name}. Confirmation email sent to #{current_user.email}"

    return

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
