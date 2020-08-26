
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: "mstaso", password_digest: "soccer12", email: "mstaso1@gmail.com")


b1 = Business.create(name: "Flatiron School", industry:"tech", logo:"https://coursereport-s3-production.global.ssl.fastly.net/rich/rich_files/rich_files/999/s300/flatironschool.png", description:"Education should be the best investment you make in your future—and at Flatiron School, we’re committed to helping you learn the skills you need to change yours for the better. Online and on our campuses across the country, we provide the skills, community, and immersive, outcomes-driven curriculum you need to launch a career in software engineering, data science, or cybersecurity." )


    Course.delete_all

def courses
    response = RestClient.get'https://api.coursera.org/api/courses.v1?includes=instructorIds,partnerIds,photoUrl,description,domainTypes&fields=instructorIds,partnerIds,photoUrl,description,domainTypes&&limit=100'
    json = JSON.parse response

    if !json.nil?
        json["elements"].map do |course|
            Course.create(name: course["name"], category: course["domainTypes"][0]["domainId"], image: course["photoUrl"])
        end
    else
        puts "error seeding courses"
    end
end

courses

uc1 = Usercourse.create(user_id: 1, course_id: Course.all.sample.id)
uc2 = Usercourse.create(user_id: 1, course_id: Course.all.sample.id)

bc1 = Businesscourse.create(business_id: 1, course_id: Course.all.sample.id)
bc1 = Businesscourse.create(business_id: 1, course_id: Course.all.sample.id)