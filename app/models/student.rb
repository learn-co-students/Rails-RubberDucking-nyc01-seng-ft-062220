class Student < ApplicationRecord
    has_many :ducks

    #add validations
    validates :name, presence: true
    validates :mod, numericality: {greater_than: 0, less_than: 6, only_integer: true}
end
