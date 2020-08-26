class Business < ApplicationRecord
    has_many :businesscourses
    has_many :courses ,through: :businesscourses
end
