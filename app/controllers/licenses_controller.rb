class LicensesController < ApplicationController
  def index    
    @licenses = License.where("id IN ?", params[:ids]) if params[:id]

    @municipal_licenses = License.where("kind = ? AND expired != ? AND printed != ?", "municipal", true, true)
    @park_licenses = License.where("kind = ? AND expired != ? AND printed != ?", "park", true, true)
    @total_park_charge = @park_licenses.inject(0) {|sum, ml| sum += ml.amount_paid.to_i }/100
    @total_municipal_charge = @municipal_licenses.inject(0) {|sum, ml| sum += ml.amount_paid.to_i }/100

    respond_to do |format|
      format.html # license.html.erb
      format.json { render json: @pet }
      #format.csv { render text: License.to_csv(@muncipal_licenses) }
      format.xls #{ send_data @municipal_licenses.to_csv(col_sep: "\t") }
    end     
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

  def municipal
    @pet = Pet.find(params[:id])
    @licenses = @pet.licenses.where('kind = ?', "municipal")

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