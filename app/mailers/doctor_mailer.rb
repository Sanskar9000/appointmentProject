class DoctorMailer < ApplicationMailer

   default from: 'MyHospitalIndore@gmail.com'

  def confirmation_email appointment
    @appointment = appointment
    @patient = @appointment.patient
    @doctor = @appointment.doctor
    @url  = 'http://example.com/login'
    mail(to: @patient.email, subject: 'Appointment Confirmation : My Hospital Indore')
   end

  def cancelation_email appointment
    @appointment = appointment
    @patient = @appointment.patient
    @doctor = @appointment.doctor
    @url  = 'http://example.com/login'
    mail(to: @patient.email, subject: 'Appointment Cancelation : My Hospital Indore')
  end
end
