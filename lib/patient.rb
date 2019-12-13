class Patient

    attr_reader :name
    @@all = []

    def initialize(name)
        
        @name = name 
        @@all << self 
    end 
    
    def self.all

        return @@all
    end 

    def new_appointment(doctor, date)

        Appointment.new(date, self, doctor)
    end 

    def appointments

        #finds all the appointments that include this patient 
        Appointment.all.select{|appt| appt.patient == self }
    end 

    def doctors 

        #finds the doctors with whom this patient has patients 
        #transforms the self.appointments array to just show doctor objects

        self.appointments.map{|appt| appt.doctor}
    end 
end 