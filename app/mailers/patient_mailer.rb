class PatientMailer < ApplicationMailer
   default from: 'MyHospitalIndore@gmail.com'

  def creation appointment
    @appointment = appointment
    @patient = @appointment.patient
    @doctor = @appointment.doctor
    @url  = 'http://example.com/login'
    mail(to: @doctor.email, subject: 'Appointment Confirmation : My Hospital Indore')
   end
end
