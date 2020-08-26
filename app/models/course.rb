class Course < ApplicationRecord
    has_many :businesscourses
    has_many :busnisses, through: :businesscourses
    has_many :usercourses
    has_many :users, through: :usercourses
    # include HTTParty

    
    # url = "https://api.coursera.org/api/courses.v1?includes=instructorIds,partnerIds,photoUrl,description&fields=instructorIds,partnerIds,photoUrl,description&&limit=10"
    # proxyurl = "https://cors-anywhere.herokuapp.com/"


    # def request_api(url, proxyurl)
    #     request = HTTParty.get(proxyurl + url).to_json
    #     @request_hash = JSON.parse(request)
    #     binding.pry
    # end
end
