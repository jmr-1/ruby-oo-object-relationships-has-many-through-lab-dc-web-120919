class Doctor

    attr_reader :name 
    @@all = []

    def initialize(name)

        @name = name
        @@all << self 
    end 


    def self.all 
        return @@all
    end 

    def appointments 

        #looks through appointment class to get the appointments that involve
        #this doctor (self)
       return Appointment.all.select {|appt| appt.doctor == self}
    end 

    def new_appointment(patient, date)

        #note: the arrangement of these arguments are only due to the tests
        #the format should be reversed 
        Appointment.new(date, patient, self)
    end 

    def patients

        #transforms appointments to only list the patients
        #binding.pry 
        self.appointments.map {|appt| appt.patient}
    end 

end 