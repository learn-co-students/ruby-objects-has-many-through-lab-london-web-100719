class Patient
    attr_accessor :patient
    @@all = []
    
    def initialize(patient)
        @patient = patient
        @@all << self
    end 

    def self.all 
        @@all 
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end 

    def appointments 
        Appointment.all.select {|appointment| appointment.patient == self}
    end 

    def doctors
         self.appointments.map {|appointment| appointment.doctor}
    end 

end 