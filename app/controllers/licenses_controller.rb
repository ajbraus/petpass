class LicensesController < ApplicationController

  def index    
    @park_licenses = License.where("created_at < ? AND kind = ?", Date.today + 1.year, "park")
    @total_park_charge = @park_licenses.inject(0) {|sum, ml| sum += ml.amount_paid.to_i }/100
    
    @municiple_licenses = License.where("created_at < ? AND kind = ?", Date.today + 1.year, "municiple")
    @total_municiple_charge = @municiple_licenses.inject(0) {|sum, ml| sum += ml.amount_paid.to_i }/100
  end

  def show
    @pet = Pet.find(params[:id])
    @licenses = @pet.licenses

    respond_to do |format|
      format.html # license.html.erb
      format.json { render json: @pet }
    end  
  end

  def park
    @pet = Pet.find(params[:id])
    @licenses = @pet.licenses.where('kind = ?', "park")

    respond_to do |format|
      format.html # license.html.erb
      format.json { render json: @pet }
    end  
  end

  def municiple
    @pet = Pet.find(params[:id])
    @licenses = @pet.licenses.where('kind = ?', "municiple")

    respond_to do |format|
      format.html # license.html.erb
      format.json { render json: @pet }
    end  
  end

  # def new

  # end

  # def create
  #   @pet = Pet.find(params[:id])
  #   @license = @pet.licenses.build(params[:license])

  #   respond_to do |format|
  #     if @pet.save
  #       format.html { redirect_to root_path, notice: 'License was successfully created.' }
  #       format.json { render json: @pet, status: :created, location: @pet }
  #     else
  #       format.html { render action: "new" }
  #       format.json { render json: @pet.errors, status: :unprocessable_entity }
  #     end
  #   end  
  # end

  # def edit

  # end

  # def update

  # end
end