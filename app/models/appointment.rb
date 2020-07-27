class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def set_time
        self.appointment_datetime.strftime("%B %d, %Y at %T")
    end

    def patient_name
        self.patient.name
    end

    def doctor_name
        self.doctor.name
    end
end
