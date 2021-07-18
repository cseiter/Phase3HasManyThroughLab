class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name=name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date,patient)
        Appointment.new(date,patient,self)
    end

    def appointments
        Appointment.all.select {|ind_appointment| ind_appointment.doctor == self}
    end

    def patients
        appointments.map(&:patient)
    end

end
