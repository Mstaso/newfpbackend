class Course < ApplicationRecord
    has_many :businesscourses
    has_many :businesses, through: :businesscourses
    has_many :usercourses
    has_many :users, through: :usercourses
  
end
