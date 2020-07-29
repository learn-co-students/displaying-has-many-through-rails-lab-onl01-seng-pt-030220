class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def format_date
        s = self.appointment_datetime.to_datetime.to_formatted_s(:long_ordinal).split
        s.insert(3, "at").join(" ").gsub("th", "")
    end
end
