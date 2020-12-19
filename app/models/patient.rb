class Patient < ActiveRecord::Base
    validates :name, presence: true
    validates :birthdate, presence: true
    belongs_to :user

    def age
        ((Time.now - self.birthdate)/31557600).to_i
    end
end
