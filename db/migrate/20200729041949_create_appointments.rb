class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.integer :patient_id
      t.integer :doctor_id

      t.timestamps
      t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
      t.index ["patient_id"], name: "index_appointments_on_patient_id"
    end
  end
end
