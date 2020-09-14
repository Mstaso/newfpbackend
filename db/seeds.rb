
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'Faker'

u1 = User.create(username: Faker::Name.name, password_digest: "data", email: Faker::Internet.email, profile_image:"https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", cover_photo: "https://cdn.pixabay.com/photo/2015/09/26/11/21/banner-958962_960_720.jpg", description: Faker::Lorem.paragraph(2))
u2 = User.create(username: Faker::Name.name, password_digest: "data", email: Faker::Internet.email, profile_image:"https://media.istockphoto.com/photos/portrait-of-a-girl-picture-id938709362?k=6&m=938709362&s=612x612&w=0&h=mUQAOuFjTUhvykTbkpXXERePajEWvVqOM2tR3gwS3II=", cover_photo: "https://cdn.pixabay.com/photo/2015/09/26/11/21/banner-958962_960_720.jpg", description: Faker::Lorem.paragraph(2))
u3 = User.create(username: Faker::Name.name, password_digest: "data", email: Faker::Internet.email, profile_image:"https://images.pexels.com/photos/2027821/pexels-photo-2027821.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", cover_photo: "https://cdn.pixabay.com/photo/2015/11/02/18/34/banner-1018818_960_720.jpg", description: Faker::Lorem.paragraph(2))
u4 = User.create(username: Faker::Name.name, password_digest: "data", github: "github.com/jofpin", email: Faker::Internet.email, profile_image:"https://images.pexels.com/photos/2102332/pexels-photo-2102332.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", cover_photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQXUV_Tf0lV80D1RJbjOimB5-SsmkgQdF1s8A&usqp=CAU", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u5 = User.create(username: Faker::Name.name, password_digest: "data", github: "github.com/jofpin", email: Faker::Internet.email, profile_image:"https://images.pexels.com/photos/1542085/pexels-photo-1542085.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", cover_photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQXUV_Tf0lV80D1RJbjOimB5-SsmkgQdF1s8A&usqp=CAU", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
u6 = User.create(username: "Malcolm Staso", password_digest: "data", linkedin: "https://www.linkedin.com/in/malcolmstaso/", github: "https://github.com/Mstaso", email: "mstaso1@gmail.com", profile_image:"https://media-exp1.licdn.com/dms/image/C4E03AQFtRrPhnjHRtA/profile-displayphoto-shrink_200_200/0?e=1604534400&v=beta&t=zqGhjUAlvrsY9tb3JQPDk2kvLqUsIi7qqBivFlYJxx8", cover_photo: "https://cdn.pixabay.com/photo/2015/09/26/11/21/banner-958962_960_720.jpg", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")



b1 = Business.create(name: "Acorns", industry:"FinTech", job:"Our company is seeking to hire a skilled Software Developer to help with the development of our current projects. Your duties will primarily revolve around building software by writing code, as well as modifying software to fix errors, adapt it to new hardware, improve its performance, or upgrade interfaces. Flatiron School graduates are great for this position but we also require applicants to learn Python.", logo:"https://www.baincapitalventures.com/assets/Acorns-Logo-1.jpg", cover_photo: "https://sqy7rm.media.zestyio.com/Option-C.d4899f96e1858d7c1e61787a9f72ea96.jpg", description:"Acorns is an American financial technology and financial services company based in Irvine, California that specializes in micro-investing and robo-investing. As of 2019, Acorns had over 4.5 million users and over $1.2 billion in assets under management." )
b2 = Business.create(name: "Capsule", industry:"HealthTech", job:"Our company is seeking to hire a skilled Software Developer to help with the development of our current projects. Your duties will primarily revolve around building software by writing code, as well as modifying software to fix errors, adapt it to new hardware, improve its performance, or upgrade interfaces. Flatiron School graduates are great for this position but we also require applicants to learn Python.", logo:"https://res-4.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/v1463487324/x40wzghtg8tpctaz04q0.png", cover_photo:"https://ultralinq.com/wp-content/uploads/2019/09/plain-banner.jpg", description:"We are a new kind of pharmacy.  Or maybe a new kind of pharmacy mixed with an old type of pharmacy. Anything but a chain type of pharmacy, where you wait in line to talk to people who would rather be anywhere else.  We are the type of pharmacy made up of friendly, caring pharmacists who carry prescriptions straight to your door, at the tap of your phone. We are also people who take pleasure in looking after people and hope to take care of you for years to come." )

b3 = Business.create(name: "Gong", industry:"Tech", job:"Our company is seeking to hire a skilled Software Developer to help with the development of our current projects. Your duties will primarily revolve around building software by writing code, as well as modifying software to fix errors, adapt it to new hardware, improve its performance, or upgrade interfaces. Flatiron School graduates are great for this position but we also require applicants to learn Python.", logo:"https://res-1.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/l0xqrdyuetgvo4ycrglx", cover_photo:"https://cesarejournal.org/wp-content/uploads/2017/10/Plain-Banner.jpg", description:"Gong’s software automatically ingests and scans a user’s communications with customers—emails, phone calls or video chats—to detect who is ready to pitch for an upgrade, or at risk of closing their account. The time savings makes the Big Brother-like discomfort of being so closely tracked an easy tradeoff, says CEO Bendov. “It’s like having Google versus a human-curated directory,” he says. Bendov, 55, the former CEO of business-intelligence software startup SiSense, teamed up with Eilon Reshef, 48, who previously cofounded software firm WebCollage, to launch Gong in 2015. Some businesses have struggled during the spread of Covid-19 as workers stay home, but San Francisco-based Gong is benefiting. “Trends that we thought would take years, for people to work more remotely, are happening in weeks,” Bendov says." )

b4 = Business.create(name: "Homebound", industry:"Tech", job:"Our company is seeking to hire a skilled Software Developer to help with the development of our current projects. Your duties will primarily revolve around building software by writing code, as well as modifying software to fix errors, adapt it to new hardware, improve its performance, or upgrade interfaces. Flatiron School graduates are great for this position but we also require applicants to learn Python.", logo:"https://cdn.theorg.com/ebff5b00-9e53-444a-98a7-6e5e008901b6_thumb.jpg", cover_photo:"https://finbrook-news.imgix.net/news/2020/01/27/8f6ddadb1d4209d4f145a465439f841b/x-Pump-jack-Texas.jpg?w=1200&h=675&rect=0%2C89%2C960%2C540&fit=crop&ixlib=react-9.0.2" , description: "After devastating wildfires ripped through California’s wine country (where Abraham and Pechet each have homes) in 2017, the cofounders started Homebound in nearby Santa Rosa to help other homeowners rebuild—managing each step from building permits and insurance claims to design and construction. “As we watched people try to navigate the process and the complexity of everything they had to do to build a home, we knew there were really simple technology tools that were used in other industries that could make the process simpler,” says CEO Pechet, 38. Today Homebound is rebuilding 150 homes lost to fires." )
b5 = Business.create(name: "Lyra Health", industry:"Health", job:"Our company is seeking to hire a skilled Software Developer to help with the development of our current projects. Your duties will primarily revolve around building software by writing code, as well as modifying software to fix errors, adapt it to new hardware, improve its performance, or upgrade interfaces. Flatiron School graduates are great for this position but we also require applicants to learn Python.", logo:"https://res-1.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco/b3h5nhkglsrvuhhzg5tw", cover_photo:"https://files.pitchbook.com/website/images/ar/main/b/2x/GettyImages-1132089008.jpg" ,description: "About 50 million people suffer from mental health issues every year in the United States, but the biggest hurdle isn’t treatment—it’s access. Ebersman, 50, left his job as Facebook’s chief financial officer in 2014 to tackle the problem. Lyra’s solution: Help companies offer mental-health benefits to their employees. Some 40 companies have jumped on board, including eBay, Pinterest and Starbucks, giving more than a million people access to Lyra’s 3,000 therapists, coaches and physicians. Now the coronavirus is further stressing Americans and putting a spotlight on mental health. The Burlingame, California-based company expects revenue to double this year, to $100 million. “Today more than ever, companies are aware this is an important part of the puzzle,” Ebersman says. " )
b6 = Business.create(name: "SmartRent", industry:"Tech", job:"Our company is seeking to hire a skilled Software Developer to help with the development of our current projects. Your duties will primarily revolve around building software by writing code, as well as modifying software to fix errors, adapt it to new hardware, improve its performance, or upgrade interfaces. Flatiron School graduates are great for this position but we also require applicants to learn Python.", logo:"https://res-3.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/qvprykfd7sp86uelrv9g", cover_photo:"https://media.licdn.com/dms/image/C4E1BAQGiQiq8o2qzIQ/company-background_10000/0?e=2159024400&v=beta&t=Z-4Pt09v4NvQJBGdHPmdvT_OQCClh8RQnty_B2Oq4FM", description: "SmartRent brings smart home technology, such as smart locks and thermostats, to multifamily properties. The Scottsdale, Arizona, startup charges up to $1,000 for installation and hardware, plus $5 to $10 a month. The smart locks let potential tenants take private, self-guided tours of vacant apartments, a service expected to be particularly important during the pandemic. SmartRent has partnered with nearly 100 owners, including Essex Property Trust (also an investor) to get its home-tech in 90,000 units—with a goal to hit 300,000 by year-end. CEO Haldeman, 42, was previously chief technology officer at Colony Starwood Homes (now Invitation Homes) and knows the pain property owners face. “We’re really operators,” he says. “We aren’t tech guys; we’re not in the Bay Area.” " )
    Course.delete_all

# og fetch URL 'https://api.coursera.org/api/courses.v1?includes=instructorIds,partnerIds,photoUrl,description,domainTypes&fields=instructorIds,partnerIds,photoUrl,description,domainTypes&&limit=100'

# "https://api.coursera.org/api/courses.v1?includes=instructorIds,partnerIds,photoUrl,description,domainTypes&fields=instructorIds,partnerIds,photoUrl,description,domainTypes&&limit=100"
    
def courses
    response = RestClient.get"https://api.coursera.org/api/courses.v1?includes=instructorIds,partnerIds,photoUrl,description,domainTypes&fields=instructorIds,partnerIds,photoUrl,primaryLanguages[en],description,domainTypes&&limit=100"
    json = JSON.parse response

    if !json.nil?
        cover_images = [
    "https://webitup.ro/wp-content/uploads/2018/10/inContact-GartnerLeader-website-Banner-plain-11_102015.jpg",
    "https://cesarejournal.org/wp-content/uploads/2017/10/Plain-Banner.jpg",
    "https://www.groovyprint.co.uk/images/D/back_image54d107d4b15b6.png",
    "https://www.fmis.co.uk/wp-content/uploads/2019/04/Plain_Banner_1500x400.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT82WOeqkWjoSFfzrImDskQ5xTsgHMQNq6uOQ&usqp=CAU"
]    
        json["elements"].map do |course|
            Course.create(name: course["name"], category: course["domainTypes"][0]["domainId"], image: course["photoUrl"], description: course["description"], cover_photo: cover_images.sample)
        end
    else
        puts "error seeding courses"
    end
end

courses


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
Businesscourse.create(business_id: 6, course_id: Course.all.sample.id)

Course.create(name: "Flatiron School", category: "Education" , image: "https://coursereport-s3-production.global.ssl.fastly.net/rich/rich_files/rich_files/999/s200/flatironschool.png", description: "Education should be the best investment you make in your future—and at Flatiron School, we’re committed to helping you learn the skills you need to change yours for the better. Online and on our campuses across the country, we provide the skills, community, and immersive, outcomes-driven curriculum you need to launch a career in software engineering, data science, or cybersecurity.", cover_photo: "https://d1xfeo4ji9y06c.cloudfront.net/media/sites/17/2017/03/01161247/banner-bg-blue.jpg")
Businesscourse.create(business_id: 4, course_id: 101)