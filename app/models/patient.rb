class Patient < ActiveRecord::Base
    belongs_to :user

    def age
        (Time.now - patient.birthdate)/31557600.to_i
    end
end
