require 'factory_girl'
# 
# FactoryGirlGirl.define :user do |u|
#   u.email 'user@test.com'
#   u.password 'please'
# end


FactoryGirl.define do

  factory :user do
    email                 'user@test.com'
    password              'password'
  end

end