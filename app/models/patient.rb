class Patient < ActiveRecord::Base
    validates :name, presence: true
    validates :birthdate, presence: { message: "can't be blank or incorrectly formatted. Please enter [year]-[month]-[day]" }
    belongs_to :user

    def age
        ((Time.now - self.birthdate)/31557600).to_i
    end
end
