class LicensesController < ApplicationController
  def index    
    @municipal_licenses = License.where("kind = ? AND expired != ? AND printed != ?", "municipal", true, true)
    @park_licenses = License.where("kind = ? AND expired != ? AND printed != ?", "park", true, true)
    @total_park_charge = @park_licenses.inject(0) {|sum, ml| sum += ml.amount_paid.to_i }/100
    @total_municipal_charge = @municipal_licenses.inject(0) {|sum, ml| sum += ml.amount_paid.to_i }/100
    
    @printed_licenses_count = License.where("printed = ?", true).count
    @printed_licenses = License.where("printed = ?", true)
    @total_printed_charge = @printed_licenses.inject(0) {|sum, ml| sum += ml.amount_paid.to_i }/100

    respond_to do |format|
      format.html # license.html.erb
      format.js
      format.json { render json: @licenses }
    end     
  end

  def export
    ids = params[:ids].map { |i| i.to_i }
    @licenses = License.find(ids)
    if params[:format] == "submit"
      @licenses.each do |l|
        l.printed = true
        l.save
      end
      params[:format] == "js"
    end
    
    filename = "petpass_licenses_#{Date.today}"

    respond_to do |format|
      format.html # license.html.erb
      format.csv { render text: License.to_csv(@licenses) }
      format.xls
      format.pdf do
        pdf = LicensesPdf.new(@licenses)
        send_data pdf.render, type: 'application/pdf', 
                              disposition: 'attachment', 
                              filename: filename + ".pdf"
      end
      #format.js
      # format.pdf do
      #   pdf = LicensePdf.new(@licenses, view_context)
      #   send_data pdf.render, filename: "licenses_#{Date.today}.pdf",
      #                         type: "application/pdf",
      #                         disposition: "inline"
      # end
      format.json { render json: @licenses }
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

    filename = @pet.name

    respond_to do |format|
      format.html # license.html.erb
      format.json { render json: @pet }
      format.pdf do
        pdf = MunicipalPdf.new(@pet)
        send_data pdf.render, type: 'application/pdf', 
                              disposition: 'attachment', 
                              filename: filename + ".pdf"
      end
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