class AddConfirmationStatusAndHoldStatusToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :confirmation_status, :boolean
    add_column :appointments, :hold_status, :boolean
  end
end
