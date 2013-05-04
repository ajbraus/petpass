class ChargesController < ApplicationController
before_filter :authenticate_user!
  def new
    @pet = Pet.find(params[:id])
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
      park_license = @pet.licenses.build( #CREATE PARK LICENSE IN PETPASS
        kind: "park",
        amount_paid: @park_fee,
        municipality: current_user.city
        )
      park_license.save
    end

    city_license = @pet.licenses.build( #CREATE MUNICIPLE LICENSE IN PETPASS
      kind: "municiple",
      amount_paid: @city_fee,
      municipality: current_user.city
      )
    if params[:park_price].present? && city_license.save?
      Notifier.delay.confirmation_of_submission(@user, @pet)
      redirect_to root_path, notice:"Successfully submited your license for #{@pet.name}. Confirmation email sent to #{current_user.email}"
    end
    return

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
