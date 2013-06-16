namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    
    99.times do |n|
      Person.create!( first: Faker::Name.name,
                      last: Faker::Name.name,
                      email: Faker::Internet.email,
                      password: "JunkMail",
                      password_confirmation: "JunkMail",
                      zip: Faker::Address.zip_code)
    end
  end
end