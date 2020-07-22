class Student < ApplicationRecord
    has_many :ducks

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :mod, numericality: {only_integer: true}
    validates :mod, numericality: {less_than: 5}
end
