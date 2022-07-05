class Signup < ApplicationRecord
    belongs_to :camper
    belongs_to :activity

    validates :age, numericality: {in: 0-23}
end
