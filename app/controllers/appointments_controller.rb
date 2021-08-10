class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ show edit update destroy ]

  def remove_status
    @appointment = Appointment.find(params[:id])
    @appointment.confirmation_status = false
    @appointment.hold_status = false
    @appointment.save
      if @appointment.save
      respond_to do |format|
        DoctorMailer.cancelation_email(@appointment).deliver_now
        format.html { redirect_to appointments_url, notice: "Appointment was successfully Removed." }
        format.json { head :no_content }
      end
    end
  end
  def doctors_list
    @doctors = Doctor.all
  end
  
  def index

    if doctor_signed_in?
      @appointments = current_doctor.appointments
    elsif patient_signed_in?
      @appointments = current_patient.appointments
    end

  end

  # GET /appointments/1 or /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
    @did = params[:id]
    @pid = current_patient.id
  end

  # GET /appointments/1/edit
  def edit
    @did = current_doctor.id
    @pid = @appointment.patient_id
  end

  # POST /appointments or /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)
    respond_to do |format|
      PatientMailer.creation(@appointment).deliver_now
      if @appointment.save
        format.html { redirect_to appointments_path, notice: "Appointment was successfully created." }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1 or /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        DoctorMailer.confirmation_email(@appointment).deliver_now
        format.html { redirect_to appointments_url, notice: "Appointment was successfully Confirmed." }
        format.json { head :no_content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1 or /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: "Appointment was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_params
      params.require(:appointment).permit(:appointment_date, :doctor_id, :patient_id, :hold_status, :confirmation_status)
    end
end
