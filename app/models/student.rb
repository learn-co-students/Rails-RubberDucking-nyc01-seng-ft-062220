class Student < ApplicationRecord
    has_many :ducks 

    validates :name, presence: true
    validates :mod, numericality: {greater_than: 1}
    validates :mod, numericality: {less_than: 5}
end
