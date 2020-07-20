class AddIdsToDoctors < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :patient_id, :integer
    add_column :doctors, :appointment_id, :integer
  end
end
