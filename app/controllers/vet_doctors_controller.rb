class VetDoctorsController < ApplicationController
  before_filter :authorize_user!, :except => [:index]
#   load_and_authorize_resource
  before_action :set_vet_doctor, only: [:show, :edit, :update, :destroy]
  
  
   
  # GET /vet_doctors
  # GET /vet_doctors.json
  def index
    @vet_doctors = VetDoctor.all
  end

  # GET /vet_doctors/1
  # GET /vet_doctors/1.json
  def show
  end

  # GET /vet_doctors/new
  def new
    @vet_doctor = VetDoctor.new
  end

  # GET /vet_doctors/1/edit
  def edit
  end

  # POST /vet_doctors
  # POST /vet_doctors.json
  def create
    @vet_doctor = VetDoctor.new(vet_doctor_params)

    respond_to do |format|
      if @vet_doctor.save
        format.html { redirect_to @vet_doctor, notice: 'Vet doctor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vet_doctor }
      else
        format.html { render action: 'new' }
        format.json { render json: @vet_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vet_doctors/1
  # PATCH/PUT /vet_doctors/1.json
  def update
    respond_to do |format|
      if @vet_doctor.update(vet_doctor_params)
        format.html { redirect_to @vet_doctor, notice: 'Vet doctor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vet_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vet_doctors/1
  # DELETE /vet_doctors/1.json
  def destroy
    @vet_doctor.destroy
    respond_to do |format|
      format.html { redirect_to vet_doctors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vet_doctor
      @vet_doctor = VetDoctor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vet_doctor_params
      params.require(:vet_doctor).permit(:name, :address, :city, :state, :zip, :school, :yrs_in_practice)
    end
end
