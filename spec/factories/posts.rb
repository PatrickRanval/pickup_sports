FactoryBot.define do
  factory :post do
    content { Faker::Lorem.paragraph }
    #FactoryBot is generating user from the users model automaticallyon the next line. A bit of not-intuitive magic: 
    user
  end
end
