class Duck < ApplicationRecord
    belongs_to :student
    #add validations
    validates :name, :description, presence: true
end
