class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def doctor_name=(name)
        self.doctor = Doctor.find_or_create_by(name: name)
      end
   
      def doctor_name
         self.doctor ? self.doctor.name : nil
      end
   
     def patient_name=(name)
       self.patient = Patient.find_or_create_by(name: name)
     end
   
     def patient_name
       self.patient ? self.patient.name : nil
     end

     def format_date
        s = self.appointment_datetime.to_datetime.to_formatted_s(:long_ordinal).split
        s.insert(3, "at").join(" ").gsub("th", "")
      end
end
