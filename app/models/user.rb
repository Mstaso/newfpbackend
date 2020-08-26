class User < ApplicationRecord
    has_many :usercourses
    has_many :courses, through: :usercourses
end
