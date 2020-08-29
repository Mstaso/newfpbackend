
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

u1 = User.create(username: Faker::Name.name, password_digest: "data", email: Faker::Internet.email)
u2 = User.create(username: Faker::Name.name, password_digest: "data", email: Faker::Internet.email)
u3 = User.create(username: Faker::Name.name, password_digest: "data", email: Faker::Internet.email)


b1 = Business.create(name: "Acorns", industry:"FinTech", logo:"https://is1-ssl.mzstatic.com/image/thumb/Purple114/v4/9c/56/0b/9c560bd4-8572-52db-5223-24cb24557888/AppIcon-0-0-1x_U007emarketing-0-0-0-5-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/246x0w.png", description:"Acorns is an American financial technology and financial services company based in Irvine, California that specializes in micro-investing and robo-investing. As of 2019, Acorns had over 4.5 million users and over $1.2 billion in assets under management." )
b2 = Business.create(name: "Capsule", industry:"HealthTech", logo:"https://res-4.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/v1463487324/x40wzghtg8tpctaz04q0.png", description:"We are a new kind of pharmacy.  Or maybe a new kind of pharmacy mixed with an old type of pharmacy. Anything but a chain type of pharmacy, where you wait in line to talk to people who would rather be anywhere else.  We are the type of pharmacy made up of friendly, caring pharmacists who carry prescriptions straight to your door, at the tap of your phone. We are also people who take pleasure in looking after people and hope to take care of you for years to come." )
b3 = Business.create(name: "Gong", industry:"Tech", logo:"https://res-1.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/l0xqrdyuetgvo4ycrglx", description:"Gong’s software automatically ingests and scans a user’s communications with customers—emails, phone calls or video chats—to detect who is ready to pitch for an upgrade, or at risk of closing their account. The time savings makes the Big Brother-like discomfort of being so closely tracked an easy tradeoff, says CEO Bendov. “It’s like having Google versus a human-curated directory,” he says. Bendov, 55, the former CEO of business-intelligence software startup SiSense, teamed up with Eilon Reshef, 48, who previously cofounded software firm WebCollage, to launch Gong in 2015. Some businesses have struggled during the spread of Covid-19 as workers stay home, but San Francisco-based Gong is benefiting. “Trends that we thought would take years, for people to work more remotely, are happening in weeks,” Bendov says." )
b4 = Business.create(name: "Homebound", industry:"Tech", logo:"https://res-2.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco/wtwexvmgesefk9dcg527", description: "After devastating wildfires ripped through California’s wine country (where Abraham and Pechet each have homes) in 2017, the cofounders started Homebound in nearby Santa Rosa to help other homeowners rebuild—managing each step from building permits and insurance claims to design and construction. “As we watched people try to navigate the process and the complexity of everything they had to do to build a home, we knew there were really simple technology tools that were used in other industries that could make the process simpler,” says CEO Pechet, 38. Today Homebound is rebuilding 150 homes lost to fires." )
b5 = Business.create(name: "Lyra Health", industry:"Health", logo:"https://res-1.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco/b3h5nhkglsrvuhhzg5tw", description: "About 50 million people suffer from mental health issues every year in the United States, but the biggest hurdle isn’t treatment—it’s access. Ebersman, 50, left his job as Facebook’s chief financial officer in 2014 to tackle the problem. Lyra’s solution: Help companies offer mental-health benefits to their employees. Some 40 companies have jumped on board, including eBay, Pinterest and Starbucks, giving more than a million people access to Lyra’s 3,000 therapists, coaches and physicians. Now the coronavirus is further stressing Americans and putting a spotlight on mental health. The Burlingame, California-based company expects revenue to double this year, to $100 million. “Today more than ever, companies are aware this is an important part of the puzzle,” Ebersman says. " )
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

uc1 = Usercourse.create(user_id: 1, course_id: Course.all.sample.id, status: false)
uc2 = Usercourse.create(user_id: 1, course_id: Course.all.sample.id, status: false)
uc1 = Usercourse.create(user_id: 1, course_id: Course.all.sample.id, status: false)
uc2 = Usercourse.create(user_id: 1, course_id: Course.all.sample.id, status: false)
uc1 = Usercourse.create(user_id: 2, course_id: Course.all.sample.id, status: false)
uc2 = Usercourse.create(user_id: 2, course_id: Course.all.sample.id, status: false)
uc1 = Usercourse.create(user_id: 3, course_id: Course.all.sample.id, status: false)
uc2 = Usercourse.create(user_id: 3, course_id: Course.all.sample.id, status: false)
uc2 = Usercourse.create(user_id: 3, course_id: Course.all.sample.id, status: false)

Businesscourse.create(business_id: 1, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 1, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 1, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 1, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 1, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 2, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 2, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 2, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 3, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 3, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 3, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 3, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 4, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 4, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 4, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 4, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 5, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 5, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 5, course_id: Course.all.sample.id)
Businesscourse.create(business_id: 5, course_id: Course.all.sample.id)